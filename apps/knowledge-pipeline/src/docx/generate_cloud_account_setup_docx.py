"""
Generate Bengali-first cloud account setup DOCX guides for AWS, Azure, and GCP.
Creates separate personal and enterprise guides with glossary, screen checks,
fallback help, and screenshot placeholder sections.
"""

from __future__ import annotations

from pathlib import Path
import re

from docx import Document
from docx.document import Document as DocxDocument
from docx.shared import Inches

OUTPUT_DIR = Path("Knowledge Base") / "Cloud Account Setup Guides"
SCREENSHOT_ROOT = OUTPUT_DIR / "screenshots"
INCLUDE_SCREENSHOTS = False


def formalize_bn(text: str) -> str:
    replacements = [
        ("তুমি", "আপনি"),
        ("করো", "করুন"),
        ("খুলো", "খুলুন"),
        ("লিখো", "লিখুন"),
        ("দাও", "দিন"),
        ("দেখো", "দেখুন"),
        ("নাও", "নিন"),
        ("খুঁজো", "খুঁজুন"),
        ("যাবে", "যান"),
        ("পারো", "পারেন"),
        ("বোঝো", "বোঝুন"),
        ("মিলিয়ে দেখবে", "মিলিয়ে দেখুন"),
        ("থামো", "থামুন"),
        ("শুরু করো", "শুরু করুন"),
        ("শেষ করো", "শেষ করুন"),
        ("বুঝতে হবে", "বোঝা প্রয়োজন"),
        ("must", "অবশ্যই"),
    ]
    result = text
    for old, new in replacements:
        result = result.replace(old, new)
    return result


def add_intro(doc: DocxDocument, cloud_name: str, mode: str, goal: str) -> None:
    mode_bn = "Personal" if mode == "personal" else "Enterprise"
    doc.add_heading(f"{cloud_name} {mode_bn} Account Setup Guide", level=0)
    doc.add_paragraph("Version: 3.0")
    doc.add_paragraph("Language: বাংলা")
    doc.add_paragraph("Audience: নতুন ও কর্মক্ষেত্রভিত্তিক learner, যারা ধাপে ধাপে cloud setup শিখতে চান")
    doc.add_paragraph(f"Guide Type: {mode_bn}")
    doc.add_paragraph(f"Goal: {formalize_bn(goal)}")
    doc.add_paragraph("Document Standard: Corporate Training Manual")

    doc.add_heading("এই Guide ব্যবহারের নির্দেশিকা", level=1)
    for item in [
        "একবারে একটি ধাপ সম্পন্ন করুন।",
        "প্রতিটি বড় ধাপের পরে নিচের What You Should See On Screen অংশ মিলিয়ে দেখবে।",
        "কোনো শব্দ না বুঝলে Glossary অংশে গিয়ে সহজ ব্যাখ্যা পড়বে।",
        "যদি স্ক্রিন আলাদা দেখায়, If This Page Looks Different অংশে যাবে।",
        "Screenshot Placeholder অংশে পরে screenshot বসানো যাবে, তাই সেগুলো guide marker হিসেবে দেখবে।",
    ]:
        doc.add_paragraph(formalize_bn(item), style="List Bullet")

    doc.add_heading("প্রস্তুতি শুরুর আগে", level=1)
    for item in [
        "নিজের email, user name, project/account/subscription name লিখে রাখো।",
        "password manager থাকলে ব্যবহার করো। না থাকলে notebook-এ carefully লিখে রাখো।",
        "MFA যত তাড়াতাড়ি সম্ভব চালু করো।",
        "শুরুতেই budget alert সেট করো যাতে বেশি খরচ না হয়।",
    ]:
        doc.add_paragraph(formalize_bn(item), style="List Bullet")


def add_glossary(doc: DocxDocument, items: list[tuple[str, str]]) -> None:
    doc.add_heading("Glossary", level=1)
    for term, meaning in items:
        doc.add_paragraph(f"{term}: {formalize_bn(meaning)}")


def add_structure_map(doc: DocxDocument, title: str, items: list[str]) -> None:
    doc.add_heading(title, level=1)
    for item in items:
        doc.add_paragraph(formalize_bn(item), style="List Bullet")


def add_steps(doc: DocxDocument, title: str, steps: list[str]) -> None:
    doc.add_heading(title, level=1)
    for idx, step in enumerate(steps, start=1):
        doc.add_paragraph(f"ধাপ {idx}: {formalize_bn(step)}", style="List Number")


def add_screen_checks(doc: DocxDocument, items: list[str]) -> None:
    doc.add_heading("What You Should See On Screen", level=2)
    for item in items:
        doc.add_paragraph(formalize_bn(item), style="List Bullet")


def add_fallbacks(doc: DocxDocument, items: list[str]) -> None:
    doc.add_heading("If This Page Looks Different", level=2)
    for item in items:
        doc.add_paragraph(formalize_bn(item), style="List Bullet")


def add_screenshot_placeholders(doc: DocxDocument, items: list[str]) -> None:
    doc.add_heading("Screenshot Placeholders", level=2)
    for idx, item in enumerate(items, start=1):
        doc.add_paragraph(f"Placeholder {idx}: {item}")
        doc.add_paragraph("এখানে screenshot বসবে", style="List Bullet")


def slugify(text: str) -> str:
    slug = text.lower().strip()
    slug = re.sub(r"[^a-z0-9]+", "_", slug)
    slug = re.sub(r"_+", "_", slug).strip("_")
    return slug


def add_screenshot_section(doc: DocxDocument, cloud: str, items: list[str]) -> None:
    doc.add_heading("Screenshot Placeholders", level=2)
    cloud_dir = SCREENSHOT_ROOT / cloud.lower()
    generic_img = cloud_dir / "generic.png"
    for idx, item in enumerate(items, start=1):
        doc.add_paragraph(f"Screenshot {idx}: {item}")
        specific_img = cloud_dir / f"{slugify(item)}.png"
        if specific_img.exists():
            doc.add_picture(str(specific_img), width=Inches(6.2))
            continue
        if generic_img.exists():
            doc.add_picture(str(generic_img), width=Inches(6.2))
            doc.add_paragraph("নির্দিষ্ট screenshot না পাওয়া গেলে cloud-এর generic screenshot দেখানো হয়েছে।", style="List Bullet")
            continue
        doc.add_paragraph("এখানে screenshot বসবে", style="List Bullet")


def add_section(
    doc: DocxDocument,
    cloud: str,
    title: str,
    steps: list[str],
    screen_checks: list[str],
    fallbacks: list[str],
    screenshot_items: list[str],
) -> None:
    add_steps(doc, title, steps)
    add_screen_checks(doc, screen_checks)
    add_fallbacks(doc, fallbacks)
    if INCLUDE_SCREENSHOTS and screenshot_items:
        add_screenshot_section(doc, cloud, screenshot_items)


def add_common_safety(doc: DocxDocument) -> None:
    doc.add_heading("Safety and Cost Guardrails", level=1)
    for item in [
        "ছোট budget দাও, যেমন 5 USD বা 10 USD।",
        "সব lab resource-এ একই tag বা label দাও, যেমন Project=Learning।",
        "practice শেষে resource delete করো।",
        "secret, password, OTP code, access key plain text file-এ রেখো না।",
    ]:
        doc.add_paragraph(formalize_bn(item), style="List Bullet")


def add_validation(doc: DocxDocument, checks: list[str]) -> None:
    doc.add_heading("Validation Checklist", level=1)
    for check in checks:
        doc.add_paragraph(formalize_bn(check), style="List Bullet")


def aws_glossary() -> list[tuple[str, str]]:
    return [
        ("Organization", "অনেকগুলো AWS Account-কে একসাথে family-এর মতো ধরে রাখার সবচেয়ে বড় box। Enterprise setup-এ এটি খুব important।"),
        ("Account", "AWS-এ resource রাখার আসল working ঘর।"),
        ("Role", "permission-এর পোশাক। কোন কাজ করা যাবে সেটা Role বলে দেয়।"),
        ("IAM Identity Center", "এক জায়গা থেকে অনেক AWS Account-এ login করার enterprise দরজা।"),
        ("MFA", "password-এর পরে আরেকটি proof, যেমন phone app code।"),
        ("Region", "কোন জায়গার AWS data center area use করবে সেটি।"),
    ]


def azure_glossary() -> list[tuple[str, str]]:
    return [
        ("Tenant", "Azure/Entra identity-এর সবচেয়ে বড় ঘর। user, group, app সাধারণত Tenant-এর মধ্যে থাকে।"),
        ("Management Group", "অনেক Subscription-এর উপরের বড় grouping layer।"),
        ("Subscription", "billing ও resource boundary-এর বড় box।"),
        ("Resource Group", "একসাথে related resource রাখার box।"),
        ("Role", "কে কী permission পাবে তা বলে দেয়।"),
        ("MFA", "password-এর পরে extra proof।"),
    ]


def gcp_glossary() -> list[tuple[str, str]]:
    return [
        ("Organization", "GCP enterprise-এর সবচেয়ে বড় box। Company domain-এর সাথে জড়িত থাকে।"),
        ("Folder", "Organization-এর ভিতরে বড় grouping box, team বা department আলাদা করতে কাজে লাগে।"),
        ("Project", "GCP-তে resource রাখার প্রধান working box।"),
        ("Billing Account", "খরচ কোন billing source-এর সাথে যাবে সেটি ধরে রাখে।"),
        ("Role", "permission-এর পোশাক।"),
        ("MFA", "password-এর পরে extra proof।"),
    ]


def aws_structure(mode: str) -> list[str]:
    items = [
        "AWS-এ resource সাধারণত Account-এর ভিতরে থাকে।",
        "service page-এ যাওয়ার আগে Account আর Region ঠিক কিনা check করবে।",
    ]
    if mode == "enterprise":
        return [
            "সবচেয়ে উপরে Organization থাকে।",
            "Organization-এর ভিতরে অনেক Account থাকে, যেমন dev, test, prod।",
            "User সাধারণত Role নিয়ে Account-এ ঢুকে কাজ করে।",
            "একটি ছোট rule মনে রাখো: Organization -> Account -> Role -> Region -> Service।",
            *items,
        ]
    return [
        "Personal setup-এ সাধারণত একটি main Account দিয়েই শুরু হয়।",
        "Root user শুধু setup-এর জন্য, daily work-এর জন্য admin user use করা ভালো।",
        "একটি ছোট rule মনে রাখো: Account -> User -> Region -> Service।",
        *items,
    ]


def azure_structure(mode: str) -> list[str]:
    common = [
        "resource create করার আগে Subscription আর Resource Group ঠিক কিনা check করবে।",
    ]
    if mode == "enterprise":
        return [
            "সবচেয়ে উপরে Tenant থাকে।",
            "Tenant-এর নিচে Management Group থাকতে পারে।",
            "Management Group-এর নিচে Subscription থাকে।",
            "Subscription-এর নিচে Resource Group থাকে।",
            "একটি ছোট rule: Tenant -> Management Group -> Subscription -> Resource Group -> Resource।",
            *common,
        ]
    return [
        "Personal setup-এ অনেক সময় একটি Tenant আর একটি Subscription দিয়েই শুরু হয়।",
        "Resource Group হলো practice resource রাখার main box।",
        "একটি ছোট rule: Tenant -> Subscription -> Resource Group -> Resource।",
        *common,
    ]


def gcp_structure(mode: str) -> list[str]:
    common = [
        "GCP-তে কাজ করার আগে Project ঠিক আছে কিনা check করা must।",
        "Billing link না থাকলে অনেক কাজ করা যাবে না।",
    ]
    if mode == "enterprise":
        return [
            "সবচেয়ে উপরে Organization থাকে, enterprise setup-এ এটি must বুঝতে হবে।",
            "Organization-এর নিচে Folder থাকতে পারে।",
            "Folder-এর নিচে Project থাকে।",
            "Project-এর সাথে Billing Account link থাকে।",
            "একটি ছোট rule: Organization -> Folder -> Project -> Billing Account -> Service।",
            *common,
        ]
    return [
        "Personal setup-এ তুমি সরাসরি Project দিয়ে কাজ শুরু করতে পারো।",
        "তবুও Project আর Billing Account সম্পর্ক বুঝে রাখা দরকার।",
        "একটি ছোট rule: Project -> Billing Account -> Service।",
        *common,
    ]


def build_aws_doc(mode: str) -> DocxDocument:
    doc = Document()
    goal = "নিরাপদভাবে AWS setup করা, login করা, আর personal বা enterprise style-এ কাজ শুরু করা"
    add_intro(doc, "AWS", mode, goal)
    add_glossary(doc, aws_glossary())
    add_structure_map(doc, "AWS Structure Map", aws_structure(mode))

    if mode == "personal":
        add_section(
            doc,
            "aws",
            "AWS Personal Account তৈরি করা",
            [
                "browser খুলে https://aws.amazon.com/ খুলো।",
                "Create an AWS Account click করো।",
                "email, account name, password লিখো।",
                "email code verify করো।",
                "Personal account type বেছে নাও।",
                "payment ও identity verification শেষ করো।",
                "Basic support plan বেছে নাও।",
                "তারপর AWS Management Console-এ sign in করো।",
            ],
            [
                "AWS console home page।",
                "উপরে search bar।",
                "account menu বা account number।",
            ],
            [
                "Create an AWS Account button না পেলে page refresh করে top-right area দেখো।",
                "console না খুললে সরাসরি https://console.aws.amazon.com/ খুলো।",
                "verification mail না এলে spam folder check করো।",
            ],
            [
                "AWS home page with Create an AWS Account button",
                "AWS email verification screen",
                "AWS Management Console home page",
            ],
        )
        add_section(
            doc,
            "aws",
            "Root secure করা এবং personal admin user বানানো",
            [
                "IAM page খুলো।",
                "root user-এর MFA enable করো।",
                "Users page-এ গিয়ে admin user create করো।",
                "Console access enable করো।",
                "AdministratorAccess দাও initial setup-এর জন্য।",
                "root user থেকে sign out করে admin user দিয়ে sign in করো।",
            ],
            [
                "IAM Users list-এ নতুন user।",
                "MFA enabled status।",
                "root নয়, admin user দিয়ে login।",
            ],
            [
                "IAM page আলাদা দেখালে top search bar-এ IAM লিখে আবার খুলো।",
                "MFA option না পেলে Security credentials area খুঁজে দেখো।",
            ],
            [
                "IAM page",
                "Root MFA setup page",
                "Create user page",
            ],
        )
    else:
        add_section(
            doc,
            "aws",
            "AWS Enterprise portal login শুরু করা",
            [
                "company দেওয়া IAM Identity Center start URL খুলো, যেমন https://your-company.awsapps.com/start।",
                "work email বা user name দিয়ে sign in করো।",
                "MFA complete করো।",
                "সঠিক Account বেছে নাও, যেমন dev বা prod।",
                "সঠিক Role বা permission set বেছে নাও।",
                "console খুললে Account, Role, Region check করো।",
            ],
            [
                "account chooser page।",
                "role বা permission set chooser।",
                "AWS console-এ account name, role, region।",
            ],
            [
                "start URL কাজ না করলে company portal বা IT document check করো।",
                "account list না দেখালে তোমার user-এ ওই account assign আছে কিনা admin-এর সাথে confirm করো।",
            ],
            [
                "AWS SSO start page",
                "AWS account chooser screen",
                "AWS role chooser screen",
            ],
        )

    add_section(
        doc,
        "aws",
        "Budget এবং cost alert সেট করা",
        [
            "Billing page খুলো।",
            "Budgets page-এ যাও।",
            "ছোট monthly budget বানাও।",
            "50%, 80%, 100% alert দাও।",
            "email notification যোগ করো।",
            "Cost Explorer খোলো।",
        ],
        [
            "budget list।",
            "alert threshold list।",
            "Cost Explorer chart area।",
        ],
        [
            "Billing menu না পেলে search bar-এ Billing লিখে খুলো।",
            "Budget create button না পেলে Budgets page-এর উপরে বা মাঝখানে দেখো।",
        ],
        [
            "AWS Budgets page",
            "Create budget wizard",
            "Cost Explorer dashboard",
        ],
    )

    if mode == "enterprise":
        add_section(
            doc,
            "aws",
            "Enterprise CLI and SDK Login",
            [
                "AWS CLI v2 install করো।",
                "aws configure sso চালাও।",
                "SSO start URL, SSO region, account, role choose করো।",
                "profile name save করো।",
                "aws sso login --profile profile-name চালাও।",
                "aws sts get-caller-identity চালিয়ে account confirm করো।",
            ],
            [
                "browser sign-in approval page।",
                "terminal-এ account ID।",
                "saved profile name।",
            ],
            [
                "browser না খুললে URL copy করে manually খুলো।",
                "wrong account এ গেলে profile আবার configure করো।",
            ],
            [
                "AWS CLI SSO setup prompts",
                "AWS SSO browser login page",
                "Caller identity output",
            ],
        )
        add_section(
            doc,
            "aws",
            "Enterprise Terraform Login Pattern",
            [
                "AWS CLI SSO login আগে শেষ করো।",
                "Terraform provider-এ সঠিক profile ব্যবহার করো।",
                "প্রয়োজনে assume-role pattern use করো।",
                "state S3-এ রাখো, locking DynamoDB-এ রাখো।",
                "terraform init ও terraform plan চালিয়ে scope confirm করো।",
            ],
            [
                "terraform init success।",
                "plan output-এ সঠিক account/region।",
                "remote backend info।",
            ],
            [
                "credentials error এলে AWS SSO login expired কিনা check করো।",
                "wrong region এ plan হলে provider config check করো।",
            ],
            [
                "Terraform AWS provider config",
                "Terraform init output",
                "Terraform plan output",
            ],
        )

    add_common_safety(doc)
    add_validation(doc, [
        "আমি AWS hierarchy বুঝি।",
        "আমি সঠিক account/role/region check করতে পারি।",
        "MFA চালু আছে।",
        "Budget তৈরি হয়েছে।",
    ])
    return doc


def build_azure_doc(mode: str) -> DocxDocument:
    doc = Document()
    goal = "নিরাপদভাবে Azure setup করা, login করা, আর personal বা enterprise style-এ কাজ শুরু করা"
    add_intro(doc, "Azure", mode, goal)
    add_glossary(doc, azure_glossary())
    add_structure_map(doc, "Azure Structure Map", azure_structure(mode))

    add_section(
        doc,
        "azure",
        "Azure sign-in এবং প্রথম working area",
        [
            "https://azure.microsoft.com/ খুলো।",
            "Start free বা sign-in flow শুরু করো।",
            "Microsoft account দিয়ে sign in করো।",
            "https://portal.azure.com/ খুলো।",
            "Subscriptions page খুঁজে open করো।",
            "Resource Group তৈরি করো বা enterprise হলে existing Resource Group খুঁজে নাও।",
        ],
        [
            "Azure Portal home page।",
            "Subscription name।",
            "Resource Group overview।",
        ],
        [
            "portal home আলাদা হলে উপরের search bar ব্যবহার করো।",
            "subscription না দেখালে correct tenant-এ আছ কিনা check করো।",
        ],
        [
            "Azure home page",
            "Subscriptions page",
            "Resource Group page",
        ],
    )

    add_section(
        doc,
        "azure",
        "Identity, MFA, এবং scope check",
        [
            "Microsoft Entra ID page খুলো।",
            "MFA enabled কিনা check করো।",
            "Tenant name check করো।",
            "Subscription correct কিনা check করো।",
            "enterprise হলে Management Group policy আছে কিনা জেনে নাও।",
        ],
        [
            "Entra ID page।",
            "Tenant name।",
            "Subscription selector।",
        ],
        [
            "Entra ID না পেলে search box-এ Microsoft Entra ID লিখে খুলো।",
            "wrong subscription হলে directory/subscription filter use করো।",
        ],
        [
            "Microsoft Entra ID overview",
            "Subscription selector",
            "MFA/security screen",
        ],
    )

    add_section(
        doc,
        "azure",
        "Budget এবং cost alert সেট করা",
        [
            "Cost Management + Billing page খুলো।",
            "Budgets page-এ যাও।",
            "ছোট budget amount দাও।",
            "alert threshold দাও।",
            "email recipient বা action group দাও।",
            "Cost analysis page খুলো।",
        ],
        [
            "budget list।",
            "threshold list।",
            "Cost analysis chart।",
        ],
        [
            "Cost Management page না পেলে search bar-এ নাম লিখে খুলো।",
            "billing scope ভুল হলে subscription আবার check করো।",
        ],
        [
            "Azure budget page",
            "Create budget form",
            "Cost analysis dashboard",
        ],
    )

    if mode == "enterprise":
        add_section(
            doc,
            "azure",
            "Enterprise CLI and SDK Login",
            [
                "Azure CLI install করো।",
                "az login চালাও।",
                "az account list চালিয়ে subscription list দেখো।",
                "az account set --subscription দিয়ে সঠিক subscription select করো।",
                "az account show চালিয়ে tenant/subscription confirm করো।",
                "SDK-তে DefaultAzureCredential use করো।",
            ],
            [
                "CLI login success।",
                "az account show output।",
                "correct tenant এবং subscription।",
            ],
            [
                "browser না খুললে device-code flow ব্যবহার করো।",
                "wrong tenant হলে portal আর CLI দুই জায়গাতেই scope check করো।",
            ],
            [
                "Azure CLI login page",
                "Account list output",
                "Account show output",
            ],
        )
        add_section(
            doc,
            "azure",
            "Enterprise Terraform Login Pattern",
            [
                "Azure CLI login শেষ করো।",
                "Terraform provider-কে active CLI session use করতে দাও।",
                "state Azure Storage backend-এ রাখো।",
                "dev/test/prod scope আলাদা রাখো।",
                "terraform init ও terraform plan চালিয়ে scope confirm করো।",
            ],
            [
                "terraform init success।",
                "plan output-এ correct subscription/resource group।",
                "remote backend info।",
            ],
            [
                "provider auth fail হলে az login আবার চালাও।",
                "wrong subscription এলে az account show check করো।",
            ],
            [
                "Azure Terraform provider config",
                "Terraform init output",
                "Terraform plan output",
            ],
        )

    add_common_safety(doc)
    add_validation(doc, [
        "আমি Tenant, Management Group, Subscription, Resource Group পার্থক্য বুঝি।",
        "আমি সঠিক subscription check করতে পারি।",
        "MFA চালু আছে।",
        "Budget তৈরি হয়েছে।",
    ])
    return doc


def build_gcp_doc(mode: str) -> DocxDocument:
    doc = Document()
    goal = "নিরাপদভাবে GCP setup করা, login করা, আর personal বা enterprise style-এ কাজ শুরু করা"
    add_intro(doc, "GCP", mode, goal)
    add_glossary(doc, gcp_glossary())
    add_structure_map(doc, "GCP Structure Map", gcp_structure(mode))

    add_section(
        doc,
        "gcp",
        "GCP sign-in এবং first working scope",
        [
            "https://cloud.google.com/ খুলো।",
            "Get started for free বা sign-in flow শুরু করো।",
            "Google account দিয়ে sign in করো।",
            "https://console.cloud.google.com/ খুলো।",
            "project selector খুঁজে নাও।",
            "personal হলে new Project বানাও, enterprise হলে correct Organization-এর ভিতরে correct Project খুঁজে নাও।",
            "Billing link check করো।",
        ],
        [
            "Google Cloud Console home page।",
            "Project selector।",
            "Billing link status।",
            "enterprise হলে Organization name।",
        ],
        [
            "Project selector না দেখলে top bar-এ project name area খুঁজো।",
            "Organization না দেখলে company admin-এর সাথে confirm করো তুমি কোন Organization-এ assigned।",
        ],
        [
            "GCP home page",
            "Project selector dialog",
            "Billing page",
        ],
    )

    add_section(
        doc,
        "gcp",
        "Hierarchy, IAM, MFA, এবং scope বোঝা",
        [
            "IAM & Admin page খুলো।",
            "correct Project selected আছে কিনা check করো।",
            "enterprise হলে Organization must বুঝবে, তারপর Folder, তারপর Project।",
            "Google Account-এ 2-Step Verification চালু করো।",
            "Billing Account আর Project link মিলিয়ে নাও।",
            "যদি automation প্রয়োজন না হয়, এখনই service account বানাতে হবে না।",
        ],
        [
            "IAM page।",
            "Project ID।",
            "enterprise হলে Organization/Folder context।",
            "Billing Account name।",
        ],
        [
            "IAM page না পেলে search bar-এ IAM & Admin লিখে খুলো।",
            "wrong Project হলে selector থেকে আবার Project বদলাও।",
        ],
        [
            "IAM overview page",
            "Organization selector or project context",
            "Billing linkage screen",
        ],
    )

    add_section(
        doc,
        "gcp",
        "Budget এবং billing alert সেট করা",
        [
            "Billing page খুলো।",
            "Budgets and alerts page-এ যাও।",
            "ছোট monthly budget দাও।",
            "50%, 90%, 100% alert threshold দাও।",
            "email alert enable করো।",
            "Billing reports page খুলো।",
        ],
        [
            "budget list।",
            "linked Billing Account।",
            "reports chart area।",
        ],
        [
            "Budget button না পেলে Budgets and alerts menu খুঁজো।",
            "Billing Account wrong হলে project billing linkage ঠিক করো।",
        ],
        [
            "GCP budgets page",
            "Create budget form",
            "Billing reports dashboard",
        ],
    )

    if mode == "enterprise":
        add_section(
            doc,
            "gcp",
            "Enterprise CLI and SDK Login",
            [
                "Google Cloud CLI install করো।",
                "gcloud auth login চালাও।",
                "gcloud config set project YOUR_PROJECT_ID চালাও।",
                "gcloud auth list আর gcloud config list দিয়ে account/project confirm করো।",
                "SDK-এর জন্য gcloud auth application-default login চালাও যদি দরকার হয়।",
                "possible হলে impersonation বা federation use করো, JSON key ছড়িয়ে দিও না।",
            ],
            [
                "active account list।",
                "correct Project ID।",
                "ADC/browser confirmation।",
            ],
            [
                "wrong project হলে gcloud config set project আবার চালাও।",
                "wrong account হলে gcloud auth list check করো।",
            ],
            [
                "gcloud login screen",
                "gcloud config list output",
                "ADC login screen",
            ],
        )
        add_section(
            doc,
            "gcp",
            "Enterprise Terraform Login Pattern",
            [
                "gcloud login আর correct project selection আগে শেষ করো।",
                "Terraform Google provider-এ ADC বা impersonation use করো।",
                "state GCS backend-এ রাখো।",
                "dev/test/prod আলাদা Project বা workspace-এ রাখো।",
                "terraform init ও terraform plan চালিয়ে scope confirm করো।",
            ],
            [
                "terraform init success।",
                "plan output-এ correct Project ID।",
                "GCS backend info।",
            ],
            [
                "ADC কাজ না করলে gcloud auth application-default login আবার চালাও।",
                "wrong project হলে provider variables আর gcloud config দুইটাই check করো।",
            ],
            [
                "Terraform Google provider config",
                "Terraform init output",
                "Terraform plan output",
            ],
        )

    add_common_safety(doc)
    add_validation(doc, [
        "আমি Organization, Folder, Project, Billing Account পার্থক্য বুঝি।",
        "আমি correct Project check করতে পারি।",
        "2-Step Verification চালু আছে।",
        "Budget তৈরি হয়েছে।",
    ])
    return doc


def save_doc(doc: DocxDocument, name: str) -> Path:
    path = OUTPUT_DIR / name
    doc.save(str(path))
    return path


def main() -> None:
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

    legacy = [
        OUTPUT_DIR / "AWS_Account_Setup_Guide.docx",
        OUTPUT_DIR / "Azure_Account_Setup_Guide.docx",
        OUTPUT_DIR / "GCP_Account_Setup_Guide.docx",
        OUTPUT_DIR / "AWS_Personal_Account_Setup_Guide.docx",
        OUTPUT_DIR / "AWS_Enterprise_Account_Setup_Guide.docx",
        OUTPUT_DIR / "Azure_Personal_Account_Setup_Guide.docx",
        OUTPUT_DIR / "Azure_Enterprise_Account_Setup_Guide.docx",
        OUTPUT_DIR / "GCP_Personal_Account_Setup_Guide.docx",
        OUTPUT_DIR / "GCP_Enterprise_Account_Setup_Guide.docx",
    ]
    for path in legacy:
        if path.exists():
            path.unlink()

    generated = [
        save_doc(build_gcp_doc("personal"), "1.1.GCP_Personal_Account_Setup_Guide.docx"),
        save_doc(build_gcp_doc("enterprise"), "1.2.GCP_Enterprise_Account_Setup_Guide.docx"),
        save_doc(build_aws_doc("personal"), "2.1.AWS_Personal_Account_Setup_Guide.docx"),
        save_doc(build_aws_doc("enterprise"), "2.2.AWS_Enterprise_Account_Setup_Guide.docx"),
        save_doc(build_azure_doc("personal"), "3.1.Azure_Personal_Account_Setup_Guide.docx"),
        save_doc(build_azure_doc("enterprise"), "3.2.Azure_Enterprise_Account_Setup_Guide.docx"),
    ]

    print("Created:")
    for path in generated:
        print(f"- {path}")


if __name__ == "__main__":
    main()
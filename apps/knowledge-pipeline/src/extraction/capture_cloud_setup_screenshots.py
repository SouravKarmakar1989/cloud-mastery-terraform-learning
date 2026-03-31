from pathlib import Path
from playwright.sync_api import sync_playwright

ROOT = Path("Knowledge Base") / "Cloud Account Setup Guides" / "screenshots"

SHOTS = {
    "aws": {
        "generic": "https://aws.amazon.com/",
        "aws_home_page_with_create_an_aws_account_button": "https://aws.amazon.com/",
        "aws_management_console_home_page": "https://console.aws.amazon.com/",
        "aws_email_verification_screen": "https://signin.aws.amazon.com/signup",
        "iam_page": "https://console.aws.amazon.com/iam/",
        "aws_budgets_page": "https://console.aws.amazon.com/billing/home#/budgets",
        "cost_explorer_dashboard": "https://console.aws.amazon.com/cost-management/home#/cost-explorer",
        "aws_sso_start_page": "https://aws.amazon.com/iam/identity-center/",
        "aws_sso_browser_login_page": "https://aws.amazon.com/iam/identity-center/",
    },
    "azure": {
        "generic": "https://portal.azure.com/",
        "azure_home_page": "https://azure.microsoft.com/",
        "subscriptions_page": "https://portal.azure.com/#view/Microsoft_Azure_Billing/SubscriptionsBladeV2",
        "resource_group_page": "https://portal.azure.com/#view/HubsExtension/BrowseResourceGroups",
        "microsoft_entra_id_overview": "https://entra.microsoft.com/",
        "azure_budget_page": "https://portal.azure.com/#view/Microsoft_Azure_CostManagement/Menu/~/budgets",
        "cost_analysis_dashboard": "https://portal.azure.com/#view/Microsoft_Azure_CostManagement/Menu/~/overview",
        "azure_cli_login_page": "https://learn.microsoft.com/cli/azure/authenticate-azure-cli",
    },
    "gcp": {
        "generic": "https://console.cloud.google.com/",
        "gcp_home_page": "https://cloud.google.com/",
        "project_selector_dialog": "https://console.cloud.google.com/home/dashboard",
        "billing_page": "https://console.cloud.google.com/billing",
        "iam_overview_page": "https://console.cloud.google.com/iam-admin/iam",
        "gcp_budgets_page": "https://console.cloud.google.com/billing/budgets",
        "billing_reports_dashboard": "https://console.cloud.google.com/billing/reports",
        "gcloud_login_screen": "https://cloud.google.com/sdk/gcloud/reference/auth/login",
        "adc_login_screen": "https://cloud.google.com/docs/authentication/provide-credentials-adc",
    },
}


def safe_capture(page, url: str, out_path: Path) -> None:
    page.goto(url, wait_until="domcontentloaded", timeout=60000)
    page.wait_for_timeout(2500)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    page.screenshot(path=str(out_path), full_page=True)


def main() -> None:
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        context = browser.new_context(viewport={"width": 1440, "height": 1024})
        page = context.new_page()

        for cloud, entries in SHOTS.items():
            cloud_dir = ROOT / cloud
            for name, url in entries.items():
                out = cloud_dir / f"{name}.png"
                try:
                    safe_capture(page, url, out)
                    print(f"Saved: {out}")
                except Exception as exc:
                    print(f"Failed: {url} -> {exc}")

        context.close()
        browser.close()


if __name__ == "__main__":
    main()

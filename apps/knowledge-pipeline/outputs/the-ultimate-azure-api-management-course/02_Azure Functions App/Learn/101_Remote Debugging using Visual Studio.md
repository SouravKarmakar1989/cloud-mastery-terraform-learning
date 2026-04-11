# Remote Debugging Azure Functions Using Visual Studio

## Pointwise No-Loss Summary

1. The video shows how to remotely debug an Azure Function App from local Visual Studio.
2. Demo project creation uses:
	- Function App name example: function app remote,
	- .NET 7,
	- HTTP trigger,
	- Anonymous authorization.

## Initial Publish to Azure

1. Publish Function App to Azure (Windows).
2. Create new Function App target and new Resource Group.
3. Resource Group naming example in narration: RG remotes wording.
4. Use Consumption plan in Australia East.
5. Publish completes successfully.

## Prepare Visual Studio for Remote Debug

1. Change solution configuration from Release to Debug.
2. Save changes.
3. Publish again so Azure app runs the debug build.
4. In Visual Studio, go to Tools -> Options -> Debugging.
5. Ensure Enable Just My Code is unchecked.

## Attach Local Visual Studio to Azure Function Process

1. Open Debug -> Attach to Process.
2. Choose connection type Azure App Service.
3. Locate Function App in the remote Resource Group.
4. Choose .NET runtime/process option shown in dialog.
5. Attach debugger.

## Trigger and Confirm Remote Breakpoint

1. In Azure portal, open Function1.
2. Get function URL and copy it.
3. In local Visual Studio, set a breakpoint in function code.
4. Call the function URL from browser.
5. Visual Studio hits the breakpoint, confirming remote debugging works.

## Post-Debug Required Cleanup Steps

1. Stop debugging session.
2. Change configuration back from Debug to Release.
3. Publish again to Azure.
4. In Azure portal, open Function App -> Configuration -> General settings.
5. In Debugging section, turn off remote debugging.
6. Save configuration changes.

## Safety Guidance and Timeout Note

1. Do not use remote debugging on production Function Apps.
2. Use it only for development/test troubleshooting.
3. Instructor notes Microsoft behavior: remote debugging auto-disables after 48 hours.
4. Even with auto-disable, manual disable after use is still recommended.

## Cleanup Mentioned

1. Delete the created remote-debug Resource Group at end of demo.

## Overall Takeaway

1. Remote debugging requires explicit debug build publish and debugger attach to Azure App Service process.
2. Secure operational practice is to revert to release and disable remote debugging immediately after investigation.


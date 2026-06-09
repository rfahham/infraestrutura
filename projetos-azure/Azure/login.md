# Login

```bash
az login
```

You have logged into Microsoft Azure!
You can close this window, or we will redirect you to the Azure CLI documentation in 1 minute.

Announcements
[Windows only] Azure CLI is collecting feedback on using the Web Account Manager (WAM) broker for the login experience.

You may opt-in to use WAM by running the following commands:

```bash
az config set core.allow_broker=true
az account clear
az login
```

```bash
A web browser has been opened at https://login.microsoftonline.com/organizations/oauth2/v2.0/authorize. Please continue the login in the web browser. If no web browser is available or if the web browser fails to open, use device code flow with `az login --use-device-code`.
[
  {
    "cloudName": "AzureCloud",
    "homeTenantId": "ae1e0c12-6bcd-4509-b00c-a22bba3a7483",
    "id": "502106ad-0ff7-4b54-b992-858eac397ba8",
    "isDefault": true,
    "managedByTenants": [],
    "name": "Azure subscription 1",
    "state": "Enabled",
    "tenantId": "ae1e0c12-6bcd-4509-b00c-a22bba3a7483",
    "user": {
      "name": "rfahham@hotmail.com",
      "type": "user"
    }
  }
]

```
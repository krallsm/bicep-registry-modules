Param(
    [string]$subscriptionId,
    [string]$subscriptionDisplayName
)

# Validate required parameters
if (-not $subscriptionId -or $subscriptionId.Trim() -eq '') {
    Write-Error 'subscriptionId parameter is required and cannot be empty'
    exit 1
    if (-not $subscriptionDisplayName -or $subscriptionDisplayName.Trim() -eq '') {
        Write-Error 'subscriptionDisplayName parameter is required and cannot be empty'
        exit 1
    } else {
        Write-Output "Subscription display name is set to: $subscriptionDisplayName"
        # Proceed with renaming the subscription
        try {
            # Simulate renaming the subscription
            Write-Output "Renaming subscription '$subscriptionId' to '$subscriptionDisplayName'"
            Rename-AzSubscription -Id $subscriptionId -SubscriptionName $subscriptionDisplayName
            Write-Output 'Subscription renamed successfully'
        } catch {
            Write-Error "Failed to rename subscription: $_"
        }
    }
}



$ErrorActionPreference = 'SilentlyContinue'


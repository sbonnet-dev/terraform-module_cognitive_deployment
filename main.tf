resource "azurerm_cognitive_deployment" "gpt-35" {
  name                 = var.name
  cognitive_account_id = var.cognitive_account_id//"/subscriptions/01f9de63-11ac-4a41-acd5-e398487749e5/resourceGroups/rg-sboai-env/providers/Microsoft.CognitiveServices/accounts/cog-tvxbgsftoyot5"
 
  model {
    format  = "OpenAI"
    name    = "gpt-35-turbo"
    version = "0301"
  }
  scale {
    type = "Standard"
  }
}

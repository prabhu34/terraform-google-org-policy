/**
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/******************************************
  Invoke the org_policy_v2 module
 *****************************************/
module "gcp_org_policy_v2" {
  source = "../../modules/org_policy_v2"

  org_policies = {
    for policy, policy_config in var.org_policies : policy => merge(policy_config, { organization_id = var.org_id })
  }
}


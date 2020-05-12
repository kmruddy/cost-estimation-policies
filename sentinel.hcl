import "tfrun"
import "decimal"

if tfrun.check_cost_estimate else null is null {
    print("No cost estimate avilable")
    return true
}

proposed_monthly_cost = decimal.new(tfrun.cost_estimate.proposed_monthly_cost)   

if proposed_monthly_cost.less_than(10) {
    print("Proposed montly cost", proposed_monthly_cost.string, "is under the limit")
    return true
} else {
    print("Proposed montly cost", proposed_monthly_cost.string, "is over the limit")
    return false
}
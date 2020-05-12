import "tfrun"
import "decimal"

if tfrun.cost_estimate else null is null {
    print("No cost estimates available")
    return true
} else {
    proposed_monthly_cost = decimal.new(tfrun.cost_estimate.proposed_monthly_cost)   
    proposed_monthly_cost.less_than(10)
}

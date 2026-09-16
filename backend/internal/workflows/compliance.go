package workflows
import (
 "context"
 "time"
 "go.temporal.io/sdk/workflow"
)
func EntityComplianceCheckWorkflow(ctx workflow.Context, entityID int) error {
 ao := workflow.ActivityOptions{StartToCloseTimeout: time.Minute}
 ctx = workflow.WithActivityOptions(ctx, ao)
 return workflow.ExecuteActivity(ctx, CheckEntityStatusActivity, entityID).Get(ctx, nil)
}
func CheckEntityStatusActivity(ctx context.Context, entityID int) (string, error) {
 return "good standing", nil
}

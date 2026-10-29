// Teaching sketch for the ordered dispatch acceptance contract.
// See the course contract: common/frontend_backend_if.sv.
module backend_dispatch_accept_demo (
    input  logic [1:0] dispatch_count_i,
    input  logic       can_accept_lane_0_i,
    input  logic       can_accept_lane_1_i,
    input  logic       branch_resolve_valid_i,
    output logic [1:0] dispatch_accept_count_o
);
    // Acceptance is a prefix. Recovery suppresses dispatch on this cycle.
    always_comb begin
        dispatch_accept_count_o = 2'd0;
        if (!branch_resolve_valid_i && dispatch_count_i != 2'd0 &&
            can_accept_lane_0_i) begin
            dispatch_accept_count_o = 2'd1;
            if (dispatch_count_i == 2'd2 && can_accept_lane_1_i) begin
                dispatch_accept_count_o = 2'd2;
            end
        end
    end
endmodule

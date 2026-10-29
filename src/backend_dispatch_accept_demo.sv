// Teaching sketch for the ordered dispatch acceptance contract.
// See the course contract: common/frontend_backend_if.sv.
module backend_dispatch_accept_demo (
    input  logic [1:0] dispatch_count_i,
    input  logic       can_accept_lane_0_i,
    input  logic       can_accept_lane_1_i,
    input  logic       branch_resolve_valid_i,
    output logic [1:0] dispatch_accept_count_o
);
    // TODO: accept only an ordered prefix and accept zero during recovery.
    always_comb dispatch_accept_count_o = '0;
endmodule

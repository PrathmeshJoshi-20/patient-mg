package com.pm.billingservice.grpc;

import billing.BillingRequest;
import billing.BillingResponse;
import io.grpc.stub.StreamObserver;
import net.devh.boot.grpc.server.service.GrpcService;
import billing.BillingServiceGrpc.BillingServiceImplBase;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@GrpcService
public class BillingServiceGrpc extends BillingServiceImplBase {

    private static final Logger log = LoggerFactory.getLogger(BillingServiceGrpc.class);
    @Override
    public void createBillingAccount(BillingRequest billingRequest,
                     StreamObserver<BillingResponse> responseStreamObserver){
        log.info("createBillingAccount request received {}",billingRequest.toString());

        // logic

        BillingResponse billingResponse = BillingResponse.newBuilder()
                .setAccountId("1234")
                .setStatus("ACTIVE")
                .build();
        responseStreamObserver.onNext(billingResponse);
        responseStreamObserver.onCompleted();
    }
}

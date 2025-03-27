package com.pm.patientservice.grpc;

import billing.BillingRequest;
import billing.BillingResponse;
import billing.BillingServiceGrpc;
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;



@Service
public class BillingServiceGrpcClient {
    private final BillingServiceGrpc.BillingServiceBlockingStub billingServiceBlockingStub;
    private Logger log = LoggerFactory.getLogger(BillingServiceGrpcClient.class);
    public BillingServiceGrpcClient(
            @Value("${billing.service.address:localhost}") String serverAddress,
            @Value("${billing.service.grpc.port:9001") int portNumber
    ){
        log.info("Connecting to Billing serv grpc at {}:{}",serverAddress,portNumber);
        ManagedChannel channel = ManagedChannelBuilder.forAddress(serverAddress,portNumber)
                .usePlaintext().build();

        billingServiceBlockingStub = BillingServiceGrpc.newBlockingStub(channel);
    }

    public BillingResponse createBillingAccount(String patientId,String name,String email){
        BillingRequest billingRequest = BillingRequest.newBuilder().setPatientId(patientId)
                .setName(name).setEmail(email).build();

        BillingResponse billingResponse=billingServiceBlockingStub.createBillingAccount(billingRequest);
        log.info("received response from billing via GRPC :{}",billingResponse);
        return billingResponse;

    }
}

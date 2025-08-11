package dev.vishan.pahanaedu.business.customer.service;

import dev.vishan.pahanaedu.business.customer.dto.CustomerDTO;

import java.util.List;

public interface CustomerService {

    void saveCustomer(CustomerDTO customer);

    CustomerDTO getCustomerById(String id);

    List<CustomerDTO> getAllCustomers();

    void updateCustomer(String id, CustomerDTO updatedCustomer);

    void deleteCustomer(String id);

    int getCustomerCount();

}

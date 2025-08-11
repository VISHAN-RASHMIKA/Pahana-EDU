package dev.vishan.pahanaedu.business.order.service;

import dev.vishan.pahanaedu.business.order.dto.OrderDTO;

public interface OrderService {

    boolean saveOrder(OrderDTO orderDTO);

    int getOrderCount();

}

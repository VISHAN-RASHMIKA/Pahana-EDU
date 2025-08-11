package dev.vishan.pahanaedu.persistence.order.dao;

import dev.vishan.pahanaedu.business.order.model.Order;

public interface OrderDAO {

    boolean save(Order order);

    int getCount();

}

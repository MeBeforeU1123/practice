package com.java.controller;

import com.java.po.OrderDetail;
import com.java.service.OrderDetailService;
import com.java.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 订单详情c层
 */
@Controller
@RequestMapping("/orderDetail")
public class OrderDetailController {

    @Autowired
    private OrderDetailService orderDetailService;

    @RequestMapping("/ulist")
    public String ulist(OrderDetail orderDetail, Model model){
        //分页查询
        String sql = "select * from order_detail  where order_id="+orderDetail.getOrderId();
        Pager<OrderDetail> pagers = orderDetailService.findBySqlReturnEntity(sql);
        model.addAttribute("pagers",pagers);
        model.addAttribute("obj",orderDetail);
        return "orderDetail/ulist";
    }
}

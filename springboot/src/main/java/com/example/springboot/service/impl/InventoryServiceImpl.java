package com.example.springboot.service.impl;

import com.example.springboot.entity.Inventory;
import com.example.springboot.mapper.InventoryMapper;
import com.example.springboot.service.IInventoryService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Artboy
 * @since 2023
 */
@Service
public class InventoryServiceImpl extends ServiceImpl<InventoryMapper, Inventory> implements IInventoryService {

}

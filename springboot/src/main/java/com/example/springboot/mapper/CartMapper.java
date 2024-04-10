package com.example.springboot.mapper;

import com.example.springboot.entity.Cart;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Artboy
 * @since 2023-06-24
 */
@Mapper
public interface CartMapper extends BaseMapper<Cart> {

}

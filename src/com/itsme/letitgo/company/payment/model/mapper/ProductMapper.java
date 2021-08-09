package com.itsme.letitgo.company.payment.model.mapper;

import java.util.List;

import com.itsme.letitgo.company.payment.model.dto.ProductDTO;

public interface ProductMapper {

	List<ProductDTO> selectProductList();

}

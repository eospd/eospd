/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.service.circuitinfo;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.eospd.entity.circuitinfo.Circuitinfo;
import com.thinkgem.jeesite.modules.eospd.dao.circuitinfo.CircuitinfoDao;

/**
 * 电支路信息Service
 * @author denofiend
 * @version 2015-10-30
 */
@Service
@Transactional(readOnly = true)
public class CircuitinfoService extends CrudService<CircuitinfoDao, Circuitinfo> {

	public Circuitinfo get(String id) {
		return super.get(id);
	}
	
	public List<Circuitinfo> findList(Circuitinfo circuitinfo) {
		return super.findList(circuitinfo);
	}
	
	public Page<Circuitinfo> findPage(Page<Circuitinfo> page, Circuitinfo circuitinfo) {
		return super.findPage(page, circuitinfo);
	}
	
	@Transactional(readOnly = false)
	public void save(Circuitinfo circuitinfo) {
		super.save(circuitinfo);
	}
	
	@Transactional(readOnly = false)
	public void delete(Circuitinfo circuitinfo) {
		super.delete(circuitinfo);
	}
	
}
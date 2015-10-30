/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.service.dataontime;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.eospd.entity.dataontime.Dataontime;
import com.thinkgem.jeesite.modules.eospd.dao.dataontime.DataontimeDao;

/**
 * 数据历史记录Service
 * @author denofiend
 * @version 2015-10-30
 */
@Service
@Transactional(readOnly = true)
public class DataontimeService extends CrudService<DataontimeDao, Dataontime> {

	public Dataontime get(String id) {
		return super.get(id);
	}
	
	public List<Dataontime> findList(Dataontime dataontime) {
		return super.findList(dataontime);
	}
	
	public Page<Dataontime> findPage(Page<Dataontime> page, Dataontime dataontime) {
		return super.findPage(page, dataontime);
	}
	
	@Transactional(readOnly = false)
	public void save(Dataontime dataontime) {
		super.save(dataontime);
	}
	
	@Transactional(readOnly = false)
	public void delete(Dataontime dataontime) {
		super.delete(dataontime);
	}
	
}
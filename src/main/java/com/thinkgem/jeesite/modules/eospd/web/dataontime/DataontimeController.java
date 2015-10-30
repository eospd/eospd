/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.web.dataontime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.eospd.entity.dataontime.Dataontime;
import com.thinkgem.jeesite.modules.eospd.service.dataontime.DataontimeService;

/**
 * 数据历史记录Controller
 * @author denofiend
 * @version 2015-10-30
 */
@Controller
@RequestMapping(value = "${adminPath}/eospd/dataontime/dataontime")
public class DataontimeController extends BaseController {

	@Autowired
	private DataontimeService dataontimeService;
	
	@ModelAttribute
	public Dataontime get(@RequestParam(required=false) String id) {
		Dataontime entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = dataontimeService.get(id);
		}
		if (entity == null){
			entity = new Dataontime();
		}
		return entity;
	}
	
	@RequiresPermissions("eospd:dataontime:dataontime:view")
	@RequestMapping(value = {"list", ""})
	public String list(Dataontime dataontime, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Dataontime> page = dataontimeService.findPage(new Page<Dataontime>(request, response), dataontime); 
		model.addAttribute("page", page);
		return "modules/eospd/dataontime/dataontimeList";
	}

	@RequiresPermissions("eospd:dataontime:dataontime:view")
	@RequestMapping(value = "form")
	public String form(Dataontime dataontime, Model model) {
		model.addAttribute("dataontime", dataontime);
		return "modules/eospd/dataontime/dataontimeForm";
	}

	@RequiresPermissions("eospd:dataontime:dataontime:edit")
	@RequestMapping(value = "save")
	public String save(Dataontime dataontime, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, dataontime)){
			return form(dataontime, model);
		}
		dataontimeService.save(dataontime);
		addMessage(redirectAttributes, "保存数据历史记录成功");
		return "redirect:"+Global.getAdminPath()+"/eospd/dataontime/dataontime/?repage";
	}
	
	@RequiresPermissions("eospd:dataontime:dataontime:edit")
	@RequestMapping(value = "delete")
	public String delete(Dataontime dataontime, RedirectAttributes redirectAttributes) {
		dataontimeService.delete(dataontime);
		addMessage(redirectAttributes, "删除数据历史记录成功");
		return "redirect:"+Global.getAdminPath()+"/eospd/dataontime/dataontime/?repage";
	}

}
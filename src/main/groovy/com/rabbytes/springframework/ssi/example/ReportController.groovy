package com.rabbytes.springframework.ssi.example

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.servlet.ModelAndView

@Controller
@RequestMapping(path = '/report')
class ReportController
{
    @RequestMapping()
    def show(@RequestParam String[] names) {
        return new ModelAndView('report', [names: names.collectEntries {[(it): (int)(Math.random().next()*100)]}])
    }
}

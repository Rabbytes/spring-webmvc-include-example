package com.rabbytes.springframework.ssi.example

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.ModelAttribute
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam

@Controller
class HomeController
{
    @RequestMapping(path = "/")
    def index() {
        'index'
    }

    @RequestMapping(path='/list')
    def list(@RequestParam String[] names, Map<String,Object> model) {
        model.names = names
        'list'
    }

    @RequestMapping(path='/redirect')
    def redirect() {
        'redirect'
    }

    @RequestMapping(path='/fail')
    def fail() {
        return 'fail'
    }

    @RequestMapping(path='/failpart')
    def failingPart() {
        throw new RuntimeException("failure in child handler /failpart")
    }

    @RequestMapping(path='/redirectpart')
    def redirectPart(@RequestParam(required = false) String path) {
        if (path)
            return "redirect:${path}"
        return 'noredirect'
    }

}

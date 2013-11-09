package egox.ext.fastjson;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FastJsonJsonView extends com.alibaba.fastjson.support.spring.FastJsonJsonView {

    @Override
    protected void prepareResponse(HttpServletRequest request, HttpServletResponse response) {
        super.prepareResponse(request, response);
        response.setContentType("text/html;charset=UTF-8");
    }

}

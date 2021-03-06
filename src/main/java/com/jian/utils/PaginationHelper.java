package com.jian.utils;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class PaginationHelper {
    // 数据总数
    private int totalCount;
    // 每页数据数
    private int countPerPage;

    public int getPageCount() {
        return totalCount % countPerPage == 0 ? totalCount / countPerPage : totalCount / countPerPage + 1;
    }

    /**
     * 页数以1开始
     *
     * @param currentPage
     * @return
     */
    public int getCurrentPageStart(int currentPage) {
        if (currentPage < 1 || currentPage > getTotalCount()) {
            throw new RuntimeException("页数错误");
        }
        return (currentPage - 1) * countPerPage;
    }

    public int getCurrentPageEnd(int currentPage) {
        if (currentPage < 1 || currentPage > getTotalCount()) {
            throw new RuntimeException("页数错误");
        }
        // 三元运算符
        return getCurrentPageStart(currentPage) + countPerPage > totalCount ?
                totalCount : getCurrentPageStart(currentPage) + countPerPage;
    }

    public void pageUtil(int page,int count) {
        int m=5;
        int i=0;
        if(page==1){
            i= page;
        }else {
            i = (page-1)*5;
        }
        this.setTotalCount(count);
        this.setCountPerPage(m);
    }
}
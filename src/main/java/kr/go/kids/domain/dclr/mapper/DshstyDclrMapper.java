package kr.go.kids.domain.dclr.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.dclr.vo.DshstyDclrPVO;
import kr.go.kids.domain.dclr.vo.DshstyDclrRVO;

@Mapper
public interface DshstyDclrMapper
{
    /**
     * 대국민포털_부정신고 기본 목록 조회 
     *
     * @param dshstyDclrPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_부정신고기본 
     */
    public List<DshstyDclrRVO> selectDshstyDclrList(DshstyDclrPVO dshstyDclrPVO);

    /**
     * 대국민포털_부정신고 기본 정보 입력 
     *
     * @param dshstyDclrPVO 입력할 대국민포털_부정신고 정보 
     * @return 입력된 건수
     */
    public int insertDshstyDclr(DshstyDclrPVO dshstyDclrPVO);

    public long nextDclrSn();
}
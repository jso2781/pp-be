package kr.or.kids.domain.form.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.or.kids.domain.form.vo.FormDVO;
import kr.or.kids.domain.form.vo.FormPVO;
import kr.or.kids.domain.form.vo.FormRVO;

@Mapper
public interface FormMapper
{
    /**
     * 대국민포털_양식기본 정보 조회 
     *
     * @param formPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_양식기본 
     */
    public FormRVO getForm(FormPVO formPVO);

    /**
     * 대국민포털_양식기본 정보 입력 
     *
     * @param formPVO 입력할 대국민포털_양식기본 정보 
     * @return 입력된 건수 
     */
    public int insertForm(FormPVO formPVO);

    /**
     * 대국민포털_양식기본 정보 수정 
     *
     * @param formPVO 수정할 대국민포털_양식기본 정보 
     * @return 수정된 건수 
     */
    public int updateForm(FormPVO formPVO);

    /**
     * 대국민포털_양식기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param formPVO 저장할 대국민포털_양식기본 정보 
     * @return 저장된 건수 
     */
    public int saveForm(FormPVO formPVO);

    /**
     * 대국민포털_양식기본 정보 삭제 
     *
     * @param formDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteForm(FormDVO formDVO);
}

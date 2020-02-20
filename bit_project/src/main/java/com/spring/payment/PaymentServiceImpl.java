package com.spring.payment;

import java.util.ArrayList;
import java.util.Date;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.MemberMapper;
import com.spring.mapper.PaymentMapper;
import com.spring.mapper.SubscribePaymentMapper;
import com.spring.member.MemberVO;

@Service("paymentService")
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberVO getUserInfo(String email) {
		MemberVO membervo = new MemberVO();
		MemberVO result = new MemberVO();
		try {
			MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
			membervo.setEmail(email);
			result = memberMapper.emailCheck(membervo);
		} catch(Exception e) {
			System.out.println("유저 정보 불러오기 실패"+ e.getMessage());
		}
		return result;
	}
	
	@Override
	public ArrayList<PMemberVO> allSubscribe(String state) throws Exception {
		try {
			PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			ArrayList<PMemberVO> list = paymentmapper.allSubscribe(state);
			return list;
		} catch (Exception e) {
			throw new Exception("구독자 결제 조회 실패", e);
		}
	}
	
	@Override
	public int insertSubscribe(SubscriptionVO vo) throws Exception {
		try {
			PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			int res = paymentmapper.insertSubscribe(vo);
			return res;
		} catch (Exception e) {
			throw new Exception("구독정보 입력 실패", e);
		}
	}
	
	@Override
	public SubscriptionVO getSubscribe(String email) throws Exception {
		try {
			PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			SubscriptionVO vo = paymentmapper.getSubscribe(email);
			return vo;
		} catch (Exception e) {
			throw new Exception("구독정보 불러오기 실패", e);
		}
	}
	
	@Override
	public int insertPayment(PaymentVO vo) throws Exception {
		try {
			PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			int res = paymentmapper.insertPayment(vo);
			return res;
		} catch (Exception e) {
			throw new Exception("결제정보 입력 실패", e);
		}
	}
	
	@Override
	public int updateMemberColumn(String email) throws Exception {
		try {
			PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			int res = paymentmapper.updateMemberColumn(email);
			return res;
		} catch (Exception e) {
			throw new Exception("멤버 구독컬럼 변경 실패", e);
		}
	}
	
	@Override
	public int updatePayState(PaymentVO vo) throws Exception {
		try {
			PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			int res = paymentmapper.updatePayState(vo);
			return res;
		} catch (Exception e) {
			throw new Exception("결제 state 값 변경 실패", e);
		}
	}
	
	@Override
	public PaymentVO selectCancel(String email) throws Exception {
		
		try {
			PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			PaymentVO vo = paymentmapper.selectCancel(email);
			return vo;
		} catch (Exception e) {
			throw new Exception("취소정보 조회 실패", e);
		}
	}
	
	@Override
	public int rePayState(PaymentVO vo) throws Exception {
		try {
			PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			int res = paymentmapper.rePayState(vo);
			return res;
		} catch(Exception e) {
			throw new Exception("예약취소 실패", e);
		}
	}
	
	@Override
	public int paidState(int subscribe_num) throws Exception {
		try {
			PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			int res = paymentmapper.paidState(subscribe_num);
			return res;
		} catch(Exception e) {
			throw new Exception("결제완료 변경 실패", e);
		}
	}
	
	@Override
	public ArrayList<PaymentVO> selectSP(String email, int start, int end) throws Exception {
		try {
			PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			ArrayList<PaymentVO> list = paymentmapper.selectSP(email, start, end);
			return list;
		} catch(Exception e) {
			throw new Exception("결제정보 조회 실패", e);
		}
	}

	
	@Override
	   public PMemberVO allSubscribe2(String merchant_uid, String state) throws Exception {
	      try {
	         PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
	         PMemberVO vo = paymentmapper.allSubscribe2(merchant_uid, state);
	         return vo;
	      } catch (Exception e) {
	         throw new Exception("구독자 결제 조회 실패", e);
	      }
	   }

	   @Override
	   public void updateSubs(int subscribe_num) throws Exception {
	      try {
	         PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
	         paymentmapper.updateSubs(subscribe_num);
	      } catch (Exception e) {
	         throw new Exception("구독자 상태:구독완료 변경 실패", e);
	      }
	   }

	   @Override
	   public ArrayList<Integer> getWishPnum(String email) throws Exception {
	      try {
	         ArrayList<Integer> list = null;
	         PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
	         list = paymentmapper.getWishPnum(email);
	         return list;
	      } catch (Exception e) {
	         throw new Exception("getWishPnum 실패", e);
	      }
	   }

	   @Override
	   public void insertProductState(int subscribe_num, int product_num, Date date) throws Exception {
	      try {
	         PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
	         paymentmapper.insertProductState(subscribe_num, product_num, date);
	      } catch (Exception e) {
	         throw new Exception("product_state 변경 실패", e);
	      }
	      
	   }

	   @Override
	   public int productAmountCheck(int product_num) throws Exception {
	      try {
	         PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
	         int res = paymentmapper.productAmountCheck(product_num);
	         return res;
	      } catch (Exception e) {
	         throw new Exception("랜덤 위시리스트 상품 현재 수량 체크 실패", e);
	      }
	   }

	   @Override
	   public void updateProductAmount(int product_num) throws Exception {
	      try {
	         PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
	         paymentmapper.updateProductAmount(product_num);
	      } catch (Exception e) {
	         throw new Exception("수량 변경 실패", e);
	      }
	   }

	   @Override
	   public int getReser(String email) throws Exception {
	      try {
	         PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
	         int res = paymentmapper.getReser(email);
	         return res;
	      } catch (Exception e) {
	         throw new Exception("수량 변경 실패", e);
	      }
	   }
	   
	   @Override
	   public void deleteWish(int randomPnum, String email) {
	      try {
	    	  PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
	    	  paymentmapper.deleteWish(randomPnum, email);
	      } catch (Exception e) {
	         e.getMessage();
	         e.printStackTrace();
	      }
	      
	   }
	   
	   @Override
	   public void updateCount(int count, String email) throws Exception {
		   try {
			   PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			   paymentmapper.updateCount(count, email);
		   } catch (Exception e) {
			   throw new Exception("반납횟수 초기화 실패", e); 
		   }
	   }
	   
	   @Override
	   public void updateMPstate(String email) throws Exception {
		   try {
			   PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			   paymentmapper.updateMPstate(email);
		   } catch (Exception e) {
			   throw new Exception("차감예정 수정 실패", e); 
		   }
	   }
	   
	   @Override
	   public int checkSubCancel(String email) throws Exception {
		   try {
			   PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			   int count = paymentmapper.checkSubCancel(email);
			   return count;
		   } catch (Exception e) {
			   throw new Exception("구독취소 체크", e);
		   }
	   }
	   
	   @Override
	   public void updateRestate(String email) throws Exception {
		   try {
		   PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
		   paymentmapper.updateRestate(email);
		   } catch (Exception e) {
			   throw new Exception("재구독 설정 실패", e);
		   }
	   }

	@Override
	public int cancelSub(String email) throws Exception {
		try {
			PaymentMapper paymentmapper = sqlSession.getMapper(PaymentMapper.class);
			int res = paymentmapper.cancelSub(email);
			return res;
		} catch(Exception e) {
			throw new Exception("구독 상태 변경 실패", e);
		}
	}

}

<%@ tag language="java" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<div class="sidebar" >

							<!-- Recent Posts -->
							<section style="margin-bottom: 2em;">
								<h2 class="major">
									<span>�ۼ����� <br> &nbsp;&nbsp;&nbsp;&nbsp;�ٸ� �Խñ�</span>
								</h2>
								<ul class="divided">
									<c:if test="${not empty writerbdatas}">
									<c:forEach items="${writerbdatas}" var="post">
										<li>
											<article class="box post-summary">
												<h3 class="anotherTitle">
													<a href="boardDetailPage.do?boardNum=${post.boardNum }">${post.title}</a>
												</h3>
												<ul class="meta">
													<li class="icon fa-clock">${post.boardDate}</li>
													<c:if test="${post.boardCommentsCnt == 0}">
														<li class="icon fa-comments">${post.boardCommentsCnt}</li>
													</c:if>
													<c:if test="${post.boardCommentsCnt != 0}">
														<li class="icon solid fa-comments">${post.boardCommentsCnt}</li>
													</c:if>
												</ul>
											</article>
										</li>
									</c:forEach>
									</c:if>
									<c:if test="${empty writerbdatas}">
										<li>
										�ش� ȸ���� �ۼ��� ���� �����ϴ�.
										</li>
									</c:if>
								</ul>
								<div style="text-align:center;">
									<a href="boardListPage.do" class="button alt sideGo">Ŀ�´�Ƽ ��������</a>
								</div>
							</section>
							<hr>
							<!-- Something -->
							<section>
								<h2 class="major">
									<span>�� ���� �Խù�</span>
								</h2>
								<h3 class="anotherTitle">
									${topbdata.title}
								</h3>
								<p id="topContent">${topbdata.content}</p>
								<div style="text-align:center;">
									<a href="boardDetailPage.do?boardNum=${topbdata.boardNum}" class="button alt sideGo">�Խñ� ��������</a>
								</div>
							</section>

						</div>
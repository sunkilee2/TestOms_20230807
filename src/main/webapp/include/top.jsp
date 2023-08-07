<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!-- Navbar -->
<div class="navbar">
	<div class="navbar-inner" style="background: #003399;">
        <div class="navbar-container" >
			<!-- Navbar Barnd -->
			<div class="navbar-header pull-left" >
				<a href="#" class="navbar-brand">
					<small>
						<img src="/publish/html/assets/img/sfood_ci.png" alt="" onclick="gohome()" style="width: 140px; height: 35px;padding: 5px 0px 0px 10px;" />
					</small>
				</a>
			</div>
			<!-- /Navbar Barnd -->
			<!-- Sidebar Collapse -->
			<div class="sidebar-collapse" id="sidebar-collapse">
				<i class="collapse-icon fa fa-bars"></i>
			</div>
			<!-- /Sidebar Collapse -->
			<!-- Account Area and Settings --->
			<div class="navbar-header pull-right">
				<div class="navbar-account">
					<ul class="account-area">
						<li>
							<a class="wave in" id="chat-link" title="Chat" href="#" onclick="getChatList();" onkeydown="return enterRemove();">
								<i class="icon glyphicon glyphicon-comment"></i>
							</a>
						</li>
						<li>
							<div class="login-area" style="font-size:17px; color:white; line-height:30px;">
									aa
							</div>
							<!--Login Area Dropdown-->
							<ul class="pull-right dropdown-menu dropdown-arrow dropdown-login-area">
								<li class="username"><a>aa</a></li>
								<li class="email"><a>aa </a></li>
								<!--Avatar Area-->
								<li>
									<div class="avatar-area">
										<img src="/publish/html/assets/img/avatars/adam-jansen.jpg" class="avatar">
										<span class="caption">Change Photo</span>
									</div>
								</li>
							</ul>
                       	</li>
                       	<li>
							<a id="logout"  href="#" onclick="logout();">
								<i class="icon glyphicon glyphicon-off"></i>
							</a>
						</li>
						 <li>
							<a id="profile"  href="#" onclick="profile();">
								<i class="icon glyphicon glyphicon-cog"></i>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /Navbar -->
<script>
</script>
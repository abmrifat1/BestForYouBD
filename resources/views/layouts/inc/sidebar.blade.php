<aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="index.php" class="brand-link">
            <img src="{{asset('img/bestforyoubd.png')}}" alt="MSoft Logo" class="brand-image img-circle elevation-3"
                 style="opacity: .8">
            <span class="brand-text font-weight-light text-center text-bold">BEST4UBD</span>
        </a>

        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                    <img src="../img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
                </div>
                <div class="info">
                    <a href="#" class="d-block">{{ Auth::user()->name }}</a>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                         with font-awesome or any other icon font library -->
                    <li class="nav-item">
                        <router-link to="/dashboard" class="nav-link">
                            <i class="nav-icon fas fa-tachometer-alt blue"></i>
                            <p>
                                Dashboard
                            </p>
                        </router-link>
                    </li>
                    @can('isAdminOrAuthor')
                    <li class="nav-item has-treeview">
                        <router-link to="/dashboard-users" class="nav-link">
                            <i class="nav-icon fa fa-user purple"></i>
                            <p>
                                Users
                                {{--<i class="right fa fa-angle-left"></i>--}}
                            </p>
                        </router-link>
                    </li>
                    @endcan
                    @can('isAdminOrAuthor')
                    <li class="nav-item has-treeview">
                        <a href="javascript:void(0)" class="nav-link">
                            <i class="nav-icon fas fa-question-circle green"></i>
                            <p>
                                Forum
                                <i class="right fa fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <router-link to="/dashboard-forum-posts" class="nav-link">
                                    <i class="fas fa-angle-double-right nav-icon yellow"></i>
                                    <p>Manage</p>
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link to="/dashboard-forum-categories" class="nav-link">
                                    <i class="fas fa-angle-double-right nav-icon yellow"></i>
                                    <p>Categories</p>
                                </router-link>
                            </li>
                        </ul>
                    </li>
                    @endcan
                    @can('isAdminOrAuthor')
                    <li class="nav-item has-treeview">
                        <a href="javascript:void(0)" class="nav-link">
                            <i class="nav-icon fas fa-university green"></i>
                            <p>
                                Institudes
                                <i class="right fa fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <router-link to="/dashboard-institutions" class="nav-link">
                                    <i class="fas fa-angle-double-right nav-icon yellow"></i>
                                    <p>Manage</p>
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link to="/dashboard-institute-departments" class="nav-link">
                                    <i class="fas fa-angle-double-right nav-icon yellow"></i>
                                    <p>Department</p>
                                </router-link>
                            </li>
                        </ul>
                    </li>
                    @endcan
                    @can('isAdminOrAuthor')
                    <li class="nav-item has-treeview">
                        <a href="javascript:void(0)" class="nav-link">
                            <i class="fas fa-hospital-symbol nav-icon green"></i>
                            <p>
                                Hospitals
                                <i class="right fa fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <router-link to="/dashboard-hospitals" class="nav-link">
                                    <i class="fas fa-angle-double-right nav-icon yellow"></i>
                                    <p>Manage</p>
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link to="/dashboard-hospital-departments" class="nav-link">
                                    <i class="fas fa-angle-double-right nav-icon yellow"></i>
                                    <p>Department</p>
                                </router-link>
                            </li>
                        </ul>
                    </li>
                    @endcan
                    @can('isAdminOrAuthor')
                    <li class="nav-item has-treeview">
                        <a href="javascript:void(0)" class="nav-link">
                            <i class="fas fa-hotel nav-icon green"></i>
                            <p>
                                Hotel
                                <i class="right fa fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <router-link to="/dashboard-hotels" class="nav-link">
                                    <i class="fas fa-angle-double-right nav-icon yellow"></i>
                                    <p>Manage</p>
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link to="/dashboard-hotel-rooms" class="nav-link">
                                    <i class="fas fa-angle-double-right nav-icon yellow"></i>
                                    <p>Rooms</p>
                                </router-link>
                            </li>
                        </ul>
                    </li>
                    @endcan
                    <li class="nav-item">
                        <router-link to="/dashboard-profile" class="nav-link">
                            <i class="nav-icon fas fa-user-cog green"></i>

                            <p>
                                Profile
                            </p>
                        </router-link>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('logout') }}"
                           onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();"><i class="nav-icon fa fa-power-off red"></i>
                            <p>{{ __('Logout') }} </p>
                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                    </li>
                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>
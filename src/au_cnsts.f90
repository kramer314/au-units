module au_cnsts
  ! Values of various physical constants in atomic units (au)

  use iso_fortran_env, only: sp=>real32, dp=>real64

  implicit none

  ! Electron mass = 1 in au
  real(dp), parameter :: me_dp = 1.0_dp
  real(sp), parameter :: me_sp = real(me_dp, kind=sp)

  ! Electron charge = 1 in au
  real(dp), parameter :: qe_dp = 1.0_dp
  real(sp), parameter :: qe_sp = real(qe_dp, kind=sp)

  ! hbar = 1 in au
  real(dp), parameter :: hbar_dp = 1.0_dp
  real(sp), parameter :: hbar_sp = real(hbar_dp, kind=sp)

  ! Bohr radius for atomic hydrogen in infinite nuclear mass approximation
  real(dp), parameter :: a0_dp = 1.0_dp
  real(dp), parameter :: a0_sp = real(a0_dp, kind=sp)

  ! Fine structure constant
  ! alpha qe^2 / (4 pi eps0 hbar c)
  real(dp), parameter :: alpha_dp = 7.29735e-3_dp
  real(sp), parameter :: alpha_sp = real(alpha_dp, kind=sp)

  ! Speed of light
  ! c = 1 / alpha
  real(dp), parameter :: c_dp = 137.036_dp
  real(sp), parameter :: c_sp = real(c_dp, kind=sp)

  ! Vacuum permittivity
  ! eps0 = 1 / (4 pi)
  real(dp), parameter :: eps0_dp = 7.957741e-2_dp
  real(sp), parameter :: eps0_sp = real(eps0_dp, kind=sp)

  ! Vacuum permeability
  ! mu0 = 4 pi / c^2 = 4 pi alpha^2
  real(dp), parameter :: mu0_dp = 6.69176e-4_dp
  real(sp), parameter :: mu0_sp = real(mu0_dp, kind=sp)

end module au_cnsts

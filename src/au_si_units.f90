module au_si_units
  ! Conversion factors between atomic units (a.u.) and SI units
  !
  ! Atomic units are defined as:
  ! m_e = q_e = hbar = k_e = a_0 = 1
  !
  ! Variables have names of the format:
  !   [unit name]_[au|si]_[sp|dp]
  !
  ! Where units with [au] are used to convert TO au from SI and units with [SI]
  ! are used to convert FROM au to SI.
  !
  ! The [sp] and [dp] parts of a variable name indicates the real type kind of
  ! the variable.

  use iso_fortran_env, only: sp=>real32, dp=>real64

  implicit none

  ! All constants taken from:
  ! Bransden, B.H. and C.J. Joachain. Physics of Atoms and Molecules.
  ! Longman Scientific & Technical (1983).

  ! Mass of electron (kg)
  real(dp), parameter :: au_si_me_dp = 9.10953e-31_dp
  real(sp), parameter :: au_si_me_sp = real(au_si_me_dp, kind=sp)


  ! Absolute value of electron charge (C)
  real(dp), parameter :: qe_si_dp = 1.60219e-19_dp
  real(sp), parameter :: qe_sp_sp = real(qe_si_dp, kind=sp)
  real(dp), parameter :: qe_au_dp = 1.0_dp / qe_si_dp
  real(sp), parameter :: qe_au_sp = real(qe_au_dp, kind=sp)

  ! hbar -- angular momentum (J s)
  real(dp), parameter :: hbar_si_dp = 1.05459e-34_dp
  real(sp), parameter :: hbar_si_sp = real(hbar_si_dp, kind=sp)
  real(dp), parameter :: hbar_au_dp = 1.0_dp / hbar_si_dp
  real(sp), parameter :: hbar_au_sp = real(hbar_au_dp, kind=sp)

  ! Length - Bohr radius for atomic hydrogen with infinite nuclear mass (m)
  real(dp), parameter :: a0_si_dp = 5.21977e-11_dp
  real(sp), parameter :: a0_si_sp = real(a0_si_dp, kind=sp)
  real(dp), parameter :: a0_au_dp = 1.0_dp / a0_si_dp
  real(sp), parameter :: a0_au_sp = real(a0_au_dp, kind=sp)

  ! Velocity -- Magnitude of electron velocity in first Bohr obrbit (m/s)
  ! v_0 = alpha c
  real(dp), parameter :: v0_si_dp = 2.18769e6_dp
  real(sp), parameter :: v0_si_sp = real(v0_si_dp, kind=sp)
  real(dp), parameter :: v0_au_dp = 1.0_dp / v0_si_dp
  real(sp), parameter :: v0_au_sp = real(v0_au_dp, kind=sp)

  ! Momentum -- Magnitude of electron momentum in first Bohr orbit (kg m / s)
  ! p0 = m v0
  real(dp), parameter :: p0_si_dp = 1.99288e-24_dp
  real(sp), parameter :: p0_si_sp = real(p0_si_dp, kind=sp)
  real(dp), parameter :: p0_au_dp = 1.0_dp / p0_si_dp
  real(dp), parameter :: p0_au_sp = real(p0_au_dp, kind=sp)

  ! Time -- Time required for electron in first Bohr orbit to travel one Bohr radius (s)
  ! t = a0/v0
  real(dp), parameter :: t_si_dp = 2.41889e-17_dp
  real(sp), parameter :: t_si_sp = real(t_si_dp, kind=sp)
  real(dp), parameter :: t_au_dp = 1.0_dp / t_si_dp
  real(sp), parameter :: t_au_sp = real(t_au_dp, kind=sp)

  ! Angular frequency -- 1/t = v0/a0 (1/s)
  real(dp), parameter :: omega_si_dp = 4.13413e16_dp
  real(sp), parameter :: omega_si_sp = real(omega_si_dp, kind=sp)
  real(dp), parameter :: omega_au_dp = 1.0_dp / omega_si_dp
  real(sp), parameter :: omega_au_sp = real(omega_au_dp, kind=sp)

  ! Frequency -- Angular frequency of electron in first Bohr orbit (1/t = v0/a0) divided by 2pi (1/s)
  ! f = v0/(2 pi a0)
  real(dp), parameter :: f_si_dp = 6.57968e15_dp
  real(sp), parameter :: f_si_sp = real(f_si_dp, kind=sp)
  real(dp), parameter :: f_au_dp = 1.0_dp / f_si_dp
  real(sp), parameter :: f_au_sp = real(f_au_dp, kind=sp)

  ! Energy -- Twice the ionisation potential of oatomic hydrogen w/infinite nuclear mass (J)
  real(dp), parameter :: e_si_dp = 4.35981e-18_dp
  real(sp), parameter :: e_sp_sp = real(e_si_dp, kind=sp)
  real(dp), parameter :: e_au_dp = 1.0_dp / e_si_dp
  real(sp), parameter :: e_au_sp = real(e_au_dp, kind=sp)

  ! Spectroscopic wavenumber -- twice the Rydberg constant (2x the wave number corresponding to the ionisation potential of atomic hydrogen w/infinite nuclear mass (1/m)
  real(dp), parameter :: nu_si_dp = 2.19464e7_dp
  real(sp), parameter :: nu_si_sp = real(nu_si_dp, kind=sp)
  real(dp), parameter :: nu_au_dp = 1.0_dp / nu_si_dp
  real(sp), parameter :: nu_au_sp = real(nu_au_dp, kind=sp)

end module au_si_units

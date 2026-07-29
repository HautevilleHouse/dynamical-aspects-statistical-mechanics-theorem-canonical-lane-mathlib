import HautevilleHouse.DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure ThermodynamicLimitPackage where
  particleNumber : Nat
  volume : ℕ → ℝ
  energyFunction : (ℕ → ℝ) → ℝ
  limitExists : Prop
  freeEnergyDensity : ℝ
  freeEnergyFinite : freeEnergyDensity < ∞

structure ThermodynamicLimitEvidence (P : ThermodynamicLimitPackage) where
  limitExistsClosed : P.limitExists
  freeEnergyFiniteClosed : P.freeEnergyFinite

def ThermodynamicLimitClosed (P : ThermodynamicLimitPackage) : Prop :=
  P.limitExists ∧ P.freeEnergyFinite

theorem thermodynamic_limit_closed_from_evidence (P : ThermodynamicLimitPackage)
    (E : ThermodynamicLimitEvidence P) : ThermodynamicLimitClosed P := by
  exact And.intro E.limitExistsClosed E.freeEnergyFiniteClosed

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
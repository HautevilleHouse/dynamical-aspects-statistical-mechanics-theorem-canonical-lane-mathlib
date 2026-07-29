import DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean.StatisticalEnsembleBridge

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure ThermodynamicLimit where
  systemSize : ℕ → ℝ
  freeEnergyDensity : ℕ → ℝ
  limitExists : ∃ L : ℝ, ∀ ε > 0, ∃ N, ∀ n ≥ N, |freeEnergyDensity n - L| < ε

def thermodynamicLimitClosed (T : ThermodynamicLimit) : Prop :=
  T.limitExists

theorem thermodynamic_limit_closed_from_evidence (T : ThermodynamicLimit) : thermodynamicLimitClosed T :=
  T.limitExists

theorem gate_from_thermodynamic_limit (A : AdmissibleClass) (T : ThermodynamicLimit) : thermodynamicLimitClosed T :=
  thermodynamic_limit_closed_from_evidence T

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
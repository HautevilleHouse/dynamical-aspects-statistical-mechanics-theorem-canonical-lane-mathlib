import HautevilleHouse.DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure ClusterExpansionPackage where
  interactionPotential : (ℕ → ℝ) → ℝ
  fugacity : ℝ
  virialCoefficients : ℕ → ℝ
  convergenceRadius : ℝ
  radiusPositive : convergenceRadius > 0

structure ClusterExpansionEvidence (P : ClusterExpansionPackage) where
  radiusPositiveClosed : P.radiusPositive

def ClusterExpansionClosed (P : ClusterExpansionPackage) : Prop :=
  P.radiusPositive

theorem cluster_expansion_closed_from_evidence (P : ClusterExpansionPackage)
    (E : ClusterExpansionEvidence P) : ClusterExpansionClosed P := by
  exact E.radiusPositiveClosed

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
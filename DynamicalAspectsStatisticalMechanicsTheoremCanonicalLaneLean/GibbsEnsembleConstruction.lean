import DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure GibbsEnsemblePackage where
  phaseSpace : Type u
  measure : Type v
  hamiltonian : phaseSpace → ℝ
  partitionFunction : ℝ
  equilibriumDistribution : phaseSpace → ℝ
  ergodicityAssumption : Prop

structure GibbsEnsembleEvidence (G : GibbsEnsemblePackage) where
  partitionFunctionFinite : G.partitionFunction ≠ ∞
  equilibriumDistributionNormalized : (∫ x, G.equilibriumDistribution x) = 1
  ergodicityAssumptionClosed : G.ergodicityAssumption

def GibbsEnsembleClosed (G : GibbsEnsemblePackage) : Prop :=
  G.partitionFunction ≠ ∞ ∧ (∫ x, G.equilibriumDistribution x) = 1 ∧ G.ergodicityAssumption

theorem gibbs_ensemble_closed_from_evidence (G : GibbsEnsemblePackage) (E : GibbsEnsembleEvidence G) :
    GibbsEnsembleClosed G := by
  exact And.intro E.partitionFunctionFinite (And.intro E.equilibriumDistributionNormalized E.ergodicityAssumptionClosed)

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
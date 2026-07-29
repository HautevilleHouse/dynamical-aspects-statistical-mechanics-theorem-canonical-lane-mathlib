import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure StatisticalMechanicsFlowsPackage where
  liouvilleEquation : Prop
  hamiltonianFlow : Prop
  conservedQuantities : Prop
  equilibriumDistribution : Prop
  entropyProduction : Prop
  fluctuationTheorem : Prop

structure StatisticalMechanicsFlowsEvidence (F : StatisticalMechanicsFlowsPackage) where
  liouvilleEquationClosed : F.liouvilleEquation
  hamiltonianFlowClosed : F.hamiltonianFlow
  conservedQuantitiesClosed : F.conservedQuantities
  equilibriumDistributionClosed : F.equilibriumDistribution
  entropyProductionClosed : F.entropyProduction
  fluctuationTheoremClosed : F.fluctuationTheorem

def StatisticalMechanicsFlowsClosed (F : StatisticalMechanicsFlowsPackage) : Prop :=
  F.liouvilleEquation ∧ F.hamiltonianFlow ∧ F.conservedQuantities ∧ F.equilibriumDistribution ∧ F.entropyProduction ∧ F.fluctuationTheorem

theorem statistical_mechanics_flows_closed_from_evidence (F : StatisticalMechanicsFlowsPackage) (E : StatisticalMechanicsFlowsEvidence F) :
    StatisticalMechanicsFlowsClosed F := by
  exact And.intro E.liouvilleEquationClosed
    (And.intro E.hamiltonianFlowClosed
      (And.intro E.conservedQuantitiesClosed
        (And.intro E.equilibriumDistributionClosed
          (And.intro E.entropyProductionClosed E.fluctuationTheoremClosed))))

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
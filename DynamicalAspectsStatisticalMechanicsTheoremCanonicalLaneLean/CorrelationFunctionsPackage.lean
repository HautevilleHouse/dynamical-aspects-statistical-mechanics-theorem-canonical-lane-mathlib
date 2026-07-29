import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure CorrelationFunctionsPackage where
  twoPointFunction : Type u
  clusterDecomposition : Prop
  exponentialDecay : Prop
  susceptibility : Prop

structure CorrelationFunctionsEvidence (C : CorrelationFunctionsPackage) where
  clusterDecompositionClosed : C.clusterDecomposition
  exponentialDecayClosed : C.exponentialDecay
  susceptibilityClosed : C.susceptibility

def CorrelationFunctionsClosed (C : CorrelationFunctionsPackage) : Prop :=
  C.clusterDecomposition ∧ C.exponentialDecay ∧ C.susceptibility

theorem correlation_functions_closed_from_evidence (C : CorrelationFunctionsPackage)
    (Ev : CorrelationFunctionsEvidence C) : CorrelationFunctionsClosed C := by
  exact And.intro Ev.clusterDecompositionClosed (And.intro Ev.exponentialDecayClosed Ev.susceptibilityClosed)

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
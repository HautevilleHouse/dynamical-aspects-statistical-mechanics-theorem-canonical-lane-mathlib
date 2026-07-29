import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure MarkovChainPackage where
  stateSpace : Type u
  transitionKernel : Type v
  stationarity : Prop
  reversible : Prop
  spectralGap : Prop
  centralLimitTheorem : Prop

structure MarkovChainEvidence (M : MarkovChainPackage) where
  stationarityClosed : M.stationarity
  reversibleClosed : M.reversible
  spectralGapClosed : M.spectralGap
  centralLimitTheoremClosed : M.centralLimitTheorem

def MarkovChainClosed (M : MarkovChainPackage) : Prop :=
  M.stationarity ∧ M.reversible ∧ M.spectralGap ∧ M.centralLimitTheorem

theorem markov_chain_closed_from_evidence (M : MarkovChainPackage)
    (Ev : MarkovChainEvidence M) : MarkovChainClosed M := by
  exact And.intro Ev.stationarityClosed (And.intro Ev.reversibleClosed (And.intro Ev.spectralGapClosed Ev.centralLimitTheoremClosed))

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure ErgodicTheoryPackage where
  measurePreservingSystem : Type u
  invariantMeasure : Type v
  ergodicity : Prop
  mixing : Prop
  spectralGap : Prop

structure ErgodicTheoryEvidence (E : ErgodicTheoryPackage) where
  ergodicityClosed : E.ergodicity
  mixingClosed : E.mixing
  spectralGapClosed : E.spectralGap

def ErgodicTheoryClosed (E : ErgodicTheoryPackage) : Prop :=
  E.ergodicity ∧ E.mixing ∧ E.spectralGap

theorem ergodic_theory_closed_from_evidence (E : ErgodicTheoryPackage)
    (Ev : ErgodicTheoryEvidence E) : ErgodicTheoryClosed E := by
  exact And.intro Ev.ergodicityClosed (And.intro Ev.mixingClosed Ev.spectralGapClosed)

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
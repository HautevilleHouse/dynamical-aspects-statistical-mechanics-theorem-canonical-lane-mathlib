import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure DynamicalSystemsPackage where
  phaseSpace : Type u
  timeEvolution : Type v
  invariantMeasures : Prop
  ergodicity : Prop
  mixing : Prop
  recurrence : Prop

structure DynamicalSystemsEvidence (D : DynamicalSystemsPackage) where
  invariantMeasuresClosed : D.invariantMeasures
  ergodicityClosed : D.ergodicity
  mixingClosed : D.mixing
  recurrenceClosed : D.recurrence

def DynamicalSystemsClosed (D : DynamicalSystemsPackage) : Prop :=
  D.invariantMeasures ∧ D.ergodicity ∧ D.mixing ∧ D.recurrence

theorem dynamical_systems_closed_from_evidence (D : DynamicalSystemsPackage) (E : DynamicalSystemsEvidence D) :
    DynamicalSystemsClosed D := by
  exact And.intro E.invariantMeasuresClosed
    (And.intro E.ergodicityClosed
      (And.intro E.mixingClosed E.recurrenceClosed))

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
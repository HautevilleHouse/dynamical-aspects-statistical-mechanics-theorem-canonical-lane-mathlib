import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure PhaseTransitionsPackage where
  orderParameter : Type u
  symmetryBreaking : Prop
  criticalTemperature : Prop
  scalingRelations : Prop

structure PhaseTransitionsEvidence (P : PhaseTransitionsPackage) where
  symmetryBreakingClosed : P.symmetryBreaking
  criticalTemperatureClosed : P.criticalTemperature
  scalingRelationsClosed : P.scalingRelations

def PhaseTransitionsClosed (P : PhaseTransitionsPackage) : Prop :=
  P.symmetryBreaking ∧ P.criticalTemperature ∧ P.scalingRelations

theorem phase_transitions_closed_from_evidence (P : PhaseTransitionsPackage)
    (Ev : PhaseTransitionsEvidence P) : PhaseTransitionsClosed P := by
  exact And.intro Ev.symmetryBreakingClosed (And.intro Ev.criticalTemperatureClosed Ev.scalingRelationsClosed)

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
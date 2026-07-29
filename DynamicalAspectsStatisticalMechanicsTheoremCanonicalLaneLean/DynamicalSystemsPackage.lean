import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure DynamicalSystemsPackage where
  phaseSpace : Type u
  flow : Type v
  invariantSet : Prop
  lyapunovExponents : Prop
  entropyProduction : Prop

structure DynamicalSystemsEvidence (D : DynamicalSystemsPackage) where
  invariantSetClosed : D.invariantSet
  lyapunovExponentsClosed : D.lyapunovExponents
  entropyProductionClosed : D.entropyProduction

def DynamicalSystemsClosed (D : DynamicalSystemsPackage) : Prop :=
  D.invariantSet ∧ D.lyapunovExponents ∧ D.entropyProduction

theorem dynamical_systems_closed_from_evidence (D : DynamicalSystemsPackage)
    (Ev : DynamicalSystemsEvidence D) : DynamicalSystemsClosed D := by
  exact And.intro Ev.invariantSetClosed (And.intro Ev.lyapunovExponentsClosed Ev.entropyProductionClosed)

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
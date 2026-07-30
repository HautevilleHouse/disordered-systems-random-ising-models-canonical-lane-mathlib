import canonicalLaneMathlib.AdmissibleClass
import DisorderedSystemsRandomIsingModelsCanonicalLaneLean.ReplicaSymmetryBreaking

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure PhaseDiagram {G : RandomIsingGraph} {H : SpinGlassHamiltonian G} (R : ReplicaSymmetryBreaking H) where
  temperatureParameter : ℝ
  criticalTemperature : ℝ
  spinGlassPhasePresent : Prop
  paramagneticPhasePresent : Prop
  phaseBoundaryDetermined : Prop
  phaseBoundaryTerm : phaseBoundaryDetermined
  spinGlassPhaseClosed : spinGlassPhasePresent
  paramagneticPhaseClosed : paramagneticPhasePresent

def PhaseDiagramClosed {G : RandomIsingGraph} {H : SpinGlassHamiltonian G} {R : ReplicaSymmetryBreaking H} (P : PhaseDiagram R) : Prop :=
  P.phaseBoundaryDetermined ∧ P.spinGlassPhasePresent ∧ P.paramagneticPhasePresent

theorem phase_diagram_closed_from_evidence {G : RandomIsingGraph} {H : SpinGlassHamiltonian G} {R : ReplicaSymmetryBreaking H} (P : PhaseDiagram R) : PhaseDiagramClosed P := by
  exact And.intro P.phaseBoundaryTerm (And.intro P.spinGlassPhaseClosed P.paramagneticPhaseClosed)

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse
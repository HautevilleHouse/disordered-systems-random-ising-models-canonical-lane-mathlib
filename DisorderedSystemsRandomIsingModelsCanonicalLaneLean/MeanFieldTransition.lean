import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure MeanFieldTransitionPackage (S : SKModel) where
  criticalTemperature : ℝ
  orderParameter : Type u
  almeidaThoulessLine : Prop
  gabayToulouseLine : Prop
  heisenbergExtension : Prop

structure MeanFieldTransitionEvidence {S : SKModel}
    (M : MeanFieldTransitionPackage S) where
  almeidaThoulessLineClosed : M.almeidaThoulessLine
  gabayToulouseLineClosed : M.gabayToulouseLine
  heisenbergExtensionClosed : M.heisenbergExtension

def MeanFieldTransitionClosed {S : SKModel}
    (M : MeanFieldTransitionPackage S) : Prop :=
  M.almeidaThoulessLine ∧ M.gabayToulouseLine ∧ M.heisenbergExtension

theorem mean_field_transition_closed_from_evidence {S : SKModel}
    (M : MeanFieldTransitionPackage S) (E : MeanFieldTransitionEvidence M)
    : MeanFieldTransitionClosed M := by
  exact And.intro E.almeidaThoulessLineClosed
    (And.intro E.gabayToulouseLineClosed E.heisenbergExtensionClosed)

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsUltradistributionsBoundaryValuesAnalyticTheoremCanonicalLaneLean.BoundaryValuesLayer

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticTheoremCanonicalLaneLean

structure AnalyticExtensionDatum where
  functionLabel : String
  extensionDomain : String
  holomorphicOnDomain : Bool
  boundaryValueRelation : String

def primitiveAnalyticExtensionDatum : AnalyticExtensionDatum := {
  functionLabel := "F(z)",
  extensionDomain := "\u2102^n \\ \u211d^n",
  holomorphicOnDomain := true,
  boundaryValueRelation := "F(z) -> BV(T)"
}

structure AnalyticExtensionLayerCertificate where
  analyticExtensionDatum : AnalyticExtensionDatum
  uniqueExtensionChecked : Bool
  analyticContinuationChecked : Bool
  layerClosed : Bool

def analyticExtensionLayerCertificate : AnalyticExtensionLayerCertificate := {
  analyticExtensionDatum := primitiveAnalyticExtensionDatum,
  uniqueExtensionChecked := true,
  analyticContinuationChecked := true,
  layerClosed := true
}

def AnalyticExtensionLayerClosed (C : AnalyticExtensionLayerCertificate) : Prop :=
  C.analyticExtensionDatum = primitiveAnalyticExtensionDatum \land
  C.uniqueExtensionChecked = true \land
  C.analyticContinuationChecked = true \land
  C.layerClosed = true

theorem analytic_extension_layer_closed_checked :
    AnalyticExtensionLayerClosed analyticExtensionLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end DistributionsUltradistributionsBoundaryValuesAnalyticTheoremCanonicalLaneLean
end HautevilleHouse
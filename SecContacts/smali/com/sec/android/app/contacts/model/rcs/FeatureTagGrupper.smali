.class public Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;
.super Ljava/lang/Object;
.source "FeatureTagGrupper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;,
        Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;,
        Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RcsContacts;,
        Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RCSState;,
        Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$Own;
    }
.end annotation


# instance fields
.field mFeatureTagsDetected:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;->mFeatureTagsDetected:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public addInfo(Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "featureName"
    .parameter "iconId"
    .parameter "iconPackage"
    .parameter "isEnabled"
    .parameter "intent"
    .parameter "displayName"
    .parameter "displayUri"
    .parameter "serviceName"

    .prologue
    .line 249
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;->mFeatureTagsDetected:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;

    .line 251
    .local v0, feature:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;
    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;

    .end local v0           #feature:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;
    invoke-direct {v0}, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;-><init>()V

    .line 254
    .restart local v0       #feature:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;
    iput-boolean p4, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->isEnabled:Z

    .line 255
    iput-object p1, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    .line 256
    iput p2, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->iconId:I

    .line 257
    iput-object p3, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->iconPackagename:Ljava/lang/String;

    .line 258
    iput-object p8, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->serviceName:Ljava/lang/String;

    .line 259
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;->mFeatureTagsDetected:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    if-eqz p4, :cond_1

    .line 272
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->isEnabled:Z

    .line 273
    iput-object p3, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->iconPackagename:Ljava/lang/String;

    .line 274
    iput p2, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->iconId:I

    .line 276
    new-instance v1, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;-><init>()V

    .line 277
    .local v1, uriDescription:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;
    iput-object p6, v1, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;->displayName:Ljava/lang/String;

    .line 278
    iput-object p7, v1, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;->displayUri:Ljava/lang/String;

    .line 279
    iput-object p5, v1, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;->intent:Landroid/content/Intent;

    .line 280
    iget-object v2, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v1           #uriDescription:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;
    :cond_1
    return-void
.end method

.method public getFeatureDescriptions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;->mFeatureTagsDetected:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;->mFeatureTagsDetected:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 289
    return-void
.end method

.class public Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;
.super Ljava/lang/Object;
.source "FeatureTagGrupper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeatureDescription"
.end annotation


# instance fields
.field public iconId:I

.field public iconPackagename:Ljava/lang/String;

.field public isEnabled:Z

.field public name:Ljava/lang/String;

.field public serviceName:Ljava/lang/String;

.field public uris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->uris:Ljava/util/ArrayList;

    return-void
.end method

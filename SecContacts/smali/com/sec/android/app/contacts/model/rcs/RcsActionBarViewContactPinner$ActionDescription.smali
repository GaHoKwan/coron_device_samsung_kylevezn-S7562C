.class Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
.super Ljava/lang/Object;
.source "RcsActionBarViewContactPinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionDescription"
.end annotation


# instance fields
.field public mDisplayName:Ljava/lang/String;

.field public mIntent:Landroid/content/Intent;

.field public mServiceName:Ljava/lang/String;

.field public mSipUri:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

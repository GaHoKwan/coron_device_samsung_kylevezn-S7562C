.class public Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;
.super Ljava/lang/Object;
.source "RcsActionBarViewContactPinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RCSColumnInfo"
.end annotation


# instance fields
.field public birthday:Ljava/lang/String;

.field public cyworld:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public facebook:Ljava/lang/String;

.field public homepage:Ljava/lang/String;

.field public moodText:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

.field public twitter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

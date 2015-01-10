.class public Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;
.super Ljava/lang/Object;
.source "ContactCounterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/ContactCounterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomRow"
.end annotation


# instance fields
.field private mCol1:Ljava/lang/String;

.field private mCol2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "col1"
    .parameter "col2"

    .prologue
    const/4 v0, 0x0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mCol1:Ljava/lang/String;

    .line 302
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mCol2:Ljava/lang/String;

    .line 305
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mCol1:Ljava/lang/String;

    .line 306
    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mCol2:Ljava/lang/String;

    .line 307
    return-void
.end method


# virtual methods
.method public getCol1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mCol1:Ljava/lang/String;

    return-object v0
.end method

.method public getCol2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mCol2:Ljava/lang/String;

    return-object v0
.end method

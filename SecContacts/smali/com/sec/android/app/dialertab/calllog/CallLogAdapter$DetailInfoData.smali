.class public Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetailInfoData"
.end annotation


# instance fields
.field ids:[J

.field idsStr:Ljava/lang/String;

.field nameText:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field pos:I

.field prevPos:I

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$ADCItem;
.super Ljava/lang/Object;
.source "AbbreviatedDialingCodesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ADCItem"
.end annotation


# instance fields
.field private mNumber:Ljava/lang/String;

.field private mService:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "mNumber"
    .parameter "mService"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$ADCItem;->this$0:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$ADCItem;->mNumber:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$ADCItem;->mService:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$ADCItem;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$ADCItem;->mService:Ljava/lang/String;

    return-object v0
.end method

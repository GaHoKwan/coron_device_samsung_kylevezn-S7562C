.class Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "TwProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field private mFromUser:Z

.field private mId:I

.field private mProgress:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwProgressBar;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwProgressBar;IIZ)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 807
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;->mId:I

    .line 809
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 810
    iput-boolean p4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 811
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 814
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;->mId:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;->mProgress:I

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;->mFromUser:Z

    #calls: Lcom/sec/android/touchwiz/widget/TwProgressBar;->doRefreshProgress(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->access$100(Lcom/sec/android/touchwiz/widget/TwProgressBar;IIZ)V

    .line 816
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    #setter for: Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;
    invoke-static {v0, p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->access$202(Lcom/sec/android/touchwiz/widget/TwProgressBar;Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;)Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    .line 817
    return-void
.end method

.method public setup(IIZ)V
    .locals 0
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 820
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;->mId:I

    .line 821
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 822
    iput-boolean p3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 823
    return-void
.end method
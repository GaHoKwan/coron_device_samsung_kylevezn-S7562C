.class Lcom/android/commands/am/Am$MyActivityController;
.super Landroid/app/IActivityController$Stub;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/am/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyActivityController"
.end annotation


# static fields
.field static final RESULT_ANR_DIALOG:I = 0x0

.field static final RESULT_ANR_KILL:I = 0x1

.field static final RESULT_ANR_WAIT:I = 0x1

.field static final RESULT_CRASH_DIALOG:I = 0x0

.field static final RESULT_CRASH_KILL:I = 0x1

.field static final RESULT_DEFAULT:I = 0x0

.field static final RESULT_EARLY_ANR_CONTINUE:I = 0x0

.field static final RESULT_EARLY_ANR_KILL:I = 0x1

.field static final STATE_ANR:I = 0x3

.field static final STATE_CRASHED:I = 0x1

.field static final STATE_EARLY_ANR:I = 0x2

.field static final STATE_NORMAL:I


# instance fields
.field final mGdbPort:Ljava/lang/String;

.field mGdbProcess:Ljava/lang/Process;

.field mGdbThread:Ljava/lang/Thread;

.field mGotGdbPrint:Z

.field mResult:I

.field mState:I

.field final synthetic this$0:Lcom/android/commands/am/Am;


# direct methods
.method constructor <init>(Lcom/android/commands/am/Am;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "gdbPort"

    .prologue
    .line 787
    iput-object p1, p0, Lcom/android/commands/am/Am$MyActivityController;->this$0:Lcom/android/commands/am/Am;

    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    .line 788
    iput-object p2, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbPort:Ljava/lang/String;

    .line 789
    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 793
    monitor-enter p0

    .line 794
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Activity resuming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 795
    monitor-exit p0

    .line 796
    const/4 v0, 0x1

    return v0

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 3
    .parameter "intent"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 801
    monitor-enter p0

    .line 802
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Activity starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 803
    monitor-exit p0

    .line 804
    const/4 v0, 0x1

    return v0

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 5
    .parameter "processName"
    .parameter "pid"
    .parameter "shortMsg"
    .parameter "longMsg"
    .parameter "timeMillis"
    .parameter "stackTrace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 810
    monitor-enter p0

    .line 811
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "** ERROR: PROCESS CRASHED"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 812
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 813
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processPid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 814
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shortMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 815
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "longMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 816
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeMillis: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 817
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "stack:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 818
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 819
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 820
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/android/commands/am/Am$MyActivityController;->waitControllerLocked(II)I

    move-result v0

    .line 821
    .local v0, result:I
    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    monitor-exit p0

    return v1

    .line 822
    .end local v0           #result:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 4
    .parameter "processName"
    .parameter "pid"
    .parameter "annotation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 828
    monitor-enter p0

    .line 829
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "** ERROR: EARLY PROCESS NOT RESPONDING"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 830
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 831
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processPid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 832
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "annotation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 833
    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Lcom/android/commands/am/Am$MyActivityController;->waitControllerLocked(II)I

    move-result v0

    .line 834
    .local v0, result:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    monitor-exit p0

    .line 835
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 836
    .end local v0           #result:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .parameter "processName"
    .parameter "pid"
    .parameter "processStats"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 842
    monitor-enter p0

    .line 843
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "** ERROR: PROCESS NOT RESPONDING"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 844
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 845
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processPid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 846
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "processStats:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 847
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 848
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 849
    const/4 v2, 0x3

    invoke-virtual {p0, p2, v2}, Lcom/android/commands/am/Am$MyActivityController;->waitControllerLocked(II)I

    move-result v0

    .line 850
    .local v0, result:I
    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    monitor-exit p0

    .line 852
    :goto_0
    return v1

    .line 851
    :cond_0
    if-ne v0, v1, :cond_1

    monitor-exit p0

    goto :goto_0

    .line 853
    .end local v0           #result:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 852
    .restart local v0       #result:I
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method killGdbLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 857
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mGotGdbPrint:Z

    .line 858
    iget-object v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 859
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Stopping gdbserver"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 861
    iput-object v2, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 865
    iput-object v2, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    .line 867
    :cond_1
    return-void
.end method

.method printMessageForState()V
    .locals 2

    .prologue
    .line 951
    iget v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 972
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "(q)uit: finish monitoring"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 973
    return-void

    .line 953
    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Monitoring activity manager...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 956
    :pswitch_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Waiting after crash...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 957
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "(c)ontinue: show crash dialog"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 958
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "(k)ill: immediately kill app"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 961
    :pswitch_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Waiting after early ANR...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 962
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "(c)ontinue: standard ANR processing"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 963
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "(k)ill: immediately kill app"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 966
    :pswitch_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Waiting after ANR...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 967
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "(c)ontinue: show ANR dialog"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 968
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "(k)ill: immediately kill app"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 969
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "(w)ait: wait some more"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 951
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method resumeController(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 943
    monitor-enter p0

    .line 944
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    .line 945
    iput p1, p0, Lcom/android/commands/am/Am$MyActivityController;->mResult:I

    .line 946
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 947
    monitor-exit p0

    .line 948
    return-void

    .line 947
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method run()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 977
    :try_start_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->printMessageForState()V

    .line 979
    iget-object v5, p0, Lcom/android/commands/am/Am$MyActivityController;->this$0:Lcom/android/commands/am/Am;

    #getter for: Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;
    invoke-static {v5}, Lcom/android/commands/am/Am;->access$200(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p0}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    .line 980
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    .line 982
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 983
    .local v1, converter:Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 986
    .local v3, in:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 987
    const/4 v0, 0x1

    .line 988
    .local v0, addNewline:Z
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 989
    const/4 v0, 0x0

    .line 1023
    :goto_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    if-eqz v0, :cond_0

    .line 1025
    :try_start_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1027
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->printMessageForState()V

    .line 1028
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1031
    .end local v0           #addNewline:Z
    .end local v1           #converter:Ljava/io/InputStreamReader;
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1032
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1034
    iget-object v5, p0, Lcom/android/commands/am/Am$MyActivityController;->this$0:Lcom/android/commands/am/Am;

    #getter for: Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;
    invoke-static {v5}, Lcom/android/commands/am/Am;->access$200(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    .line 1036
    .end local v2           #e:Ljava/io/IOException;
    :goto_2
    return-void

    .line 990
    .restart local v0       #addNewline:Z
    .restart local v1       #converter:Ljava/io/InputStreamReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :cond_1
    :try_start_4
    const-string v5, "q"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "quit"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 991
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1034
    .end local v0           #addNewline:Z
    :cond_3
    iget-object v5, p0, Lcom/android/commands/am/Am$MyActivityController;->this$0:Lcom/android/commands/am/Am;

    #getter for: Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;
    invoke-static {v5}, Lcom/android/commands/am/Am;->access$200(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_2

    .line 993
    .restart local v0       #addNewline:Z
    :cond_4
    :try_start_5
    iget v5, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    if-ne v5, v8, :cond_9

    .line 994
    const-string v5, "c"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "continue"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 995
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 1034
    .end local v0           #addNewline:Z
    .end local v1           #converter:Ljava/io/InputStreamReader;
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/android/commands/am/Am$MyActivityController;->this$0:Lcom/android/commands/am/Am;

    #getter for: Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;
    invoke-static {v6}, Lcom/android/commands/am/Am;->access$200(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    throw v5

    .line 996
    .restart local v0       #addNewline:Z
    .restart local v1       #converter:Ljava/io/InputStreamReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :cond_6
    :try_start_6
    const-string v5, "k"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "kill"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 997
    :cond_7
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    goto :goto_1

    .line 999
    :cond_8
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1001
    :cond_9
    iget v5, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_10

    .line 1002
    const-string v5, "c"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "continue"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1003
    :cond_a
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    goto/16 :goto_1

    .line 1004
    :cond_b
    const-string v5, "k"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "kill"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1005
    :cond_c
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    goto/16 :goto_1

    .line 1006
    :cond_d
    const-string v5, "w"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "wait"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1007
    :cond_e
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    goto/16 :goto_1

    .line 1009
    :cond_f
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1011
    :cond_10
    iget v5, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_15

    .line 1012
    const-string v5, "c"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "continue"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1013
    :cond_11
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    goto/16 :goto_1

    .line 1014
    :cond_12
    const-string v5, "k"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "kill"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1015
    :cond_13
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/commands/am/Am$MyActivityController;->resumeController(I)V

    goto/16 :goto_1

    .line 1017
    :cond_14
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1020
    :cond_15
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1
.end method

.method waitControllerLocked(II)I
    .locals 7
    .parameter "pid"
    .parameter "state"

    .prologue
    .line 870
    iget-object v2, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbPort:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->killGdbLocked()V

    .line 874
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting gdbserver on port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 875
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Do the following:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 876
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  adb forward tcp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tcp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 877
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  gdbclient app_process :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 879
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "gdbserver"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "--attach"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    .line 882
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 884
    .local v0, converter:Ljava/io/InputStreamReader;
    new-instance v2, Lcom/android/commands/am/Am$MyActivityController$1;

    invoke-direct {v2, p0, v0}, Lcom/android/commands/am/Am$MyActivityController$1;-><init>(Lcom/android/commands/am/Am$MyActivityController;Ljava/io/InputStreamReader;)V

    iput-object v2, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    .line 913
    iget-object v2, p0, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 917
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 926
    .end local v0           #converter:Ljava/io/InputStreamReader;
    :cond_0
    :goto_0
    iput p2, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    .line 927
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->printMessageForState()V

    .line 930
    :goto_1
    iget v2, p0, Lcom/android/commands/am/Am$MyActivityController;->mState:I

    if-eqz v2, :cond_1

    .line 932
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 933
    :catch_0
    move-exception v2

    goto :goto_1

    .line 921
    :catch_1
    move-exception v1

    .line 922
    .local v1, e:Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure starting gdbserver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->killGdbLocked()V

    goto :goto_0

    .line 937
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/commands/am/Am$MyActivityController;->killGdbLocked()V

    .line 939
    iget v2, p0, Lcom/android/commands/am/Am$MyActivityController;->mResult:I

    return v2

    .line 918
    .restart local v0       #converter:Ljava/io/InputStreamReader;
    :catch_2
    move-exception v2

    goto :goto_0
.end method

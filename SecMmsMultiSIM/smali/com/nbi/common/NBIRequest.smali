.class public interface abstract Lcom/nbi/common/NBIRequest;
.super Ljava/lang/Object;


# static fields
.field public static final ITERATION_NEXT:B = 0x2t

.field public static final ITERATION_PREV:B = 0x3t

.field public static final ITERATION_START:B = 0x1t

.field public static final SLICE_RESULTS_DEFAULT:I = 0xa

.field public static final SLICE_RESULTS_MAX:I = 0x14


# virtual methods
.method public abstract cancelRequest()V
.end method

.method public abstract isRequestInProgress()Z
.end method

.method public abstract startRequest()V
.end method

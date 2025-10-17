// filters/prisma-exception.filter.ts
import {
  ExceptionFilter,
  Catch,
  ArgumentsHost,
  HttpStatus,
} from '@nestjs/common';
import { Prisma } from '@prisma/client';
import { Response } from 'express';

@Catch(Prisma.PrismaClientKnownRequestError)
export class PrismaExceptionFilter implements ExceptionFilter {
  catch(exception: Prisma.PrismaClientKnownRequestError, host: ArgumentsHost) {
    const ctx = host.switchToHttp();
    const response = ctx.getResponse<Response>();

    let message = 'Database error';
    let statusCode = HttpStatus.INTERNAL_SERVER_ERROR;

    switch (exception.code) {
      case 'P2002':
        message = 'Unique constraint failed';
        statusCode = HttpStatus.BAD_REQUEST;
        break;
      case 'P2025':
        message = 'Record not found';
        statusCode = HttpStatus.NOT_FOUND;
        break;
    }

    response.status(statusCode).json({
      statusCode,
      message,
      error: exception.message,
    });
  }
}
